#!/usr/bin/env swift

import Foundation
import Speech
import AVFoundation

// Función para transcribir audio en tiempo real
func startRealTimeTranscription() {
    // Verificar permisos de reconocimiento de voz
    SFSpeechRecognizer.requestAuthorization { authStatus in
        switch authStatus {
        case .authorized:
            print("Permisos autorizados. Iniciando transcripción en tiempo real...")
            performRealTimeTranscription()
        case .denied:
            print("Permisos denegados. Por favor, habilita el reconocimiento de voz en Configuración.")
        case .restricted:
            print("Reconocimiento de voz restringido en este dispositivo.")
        case .notDetermined:
            print("Permisos no determinados.")
        @unknown default:
            print("Estado de autorización desconocido.")
        }
    }
}

func performRealTimeTranscription() {
    // Crear un reconocedor de voz
    guard let recognizer = SFSpeechRecognizer(locale: Locale(identifier: "es-ES")) else {
        print("Reconocedor de voz no disponible para el idioma especificado.")
        return
    }

    // Crear motor de audio
    let audioEngine = AVAudioEngine()
    let inputNode = audioEngine.inputNode
    let recordingFormat = inputNode.outputFormat(forBus: 0)

    // Crear solicitud de reconocimiento
    let request = SFSpeechAudioBufferRecognitionRequest()
    request.shouldReportPartialResults = true

    // Iniciar tarea de reconocimiento
    let recognitionTask = recognizer.recognitionTask(with: request) { result, error in
        if let error = error {
            print("Error en la transcripción: \(error.localizedDescription)")
            return
        }

        if let result = result {
            print("Transcripción parcial: \(result.bestTranscription.formattedString)")
            if result.isFinal {
                print("Transcripción final: \(result.bestTranscription.formattedString)")
            }
        }
    }

    // Instalar tap en el nodo de entrada
    inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { buffer, when in
        request.append(buffer)
    }

    // Iniciar motor de audio
    do {
        audioEngine.prepare()
        try audioEngine.start()
        print("Transcripción en tiempo real iniciada. Presiona Ctrl+C para detener.")
    } catch {
        print("Error iniciando motor de audio: \(error.localizedDescription)")
        recognitionTask.cancel()
    }

    // Mantener el programa corriendo
    RunLoop.main.run()
}

// Función para transcribir archivo de audio (modo original)
func transcribeAudio(from fileURL: URL) {
    // Verificar permisos de reconocimiento de voz
    SFSpeechRecognizer.requestAuthorization { authStatus in
        switch authStatus {
        case .authorized:
            print("Permisos autorizados para reconocimiento de voz.")
            performTranscription(from: fileURL)
        case .denied:
            print("Permisos denegados. Por favor, habilita el reconocimiento de voz en Configuración.")
        case .restricted:
            print("Reconocimiento de voz restringido en este dispositivo.")
        case .notDetermined:
            print("Permisos no determinados.")
        @unknown default:
            print("Estado de autorización desconocido.")
        }
    }
}

func performTranscription(from fileURL: URL) {
    // Crear un reconocedor de voz
    guard let recognizer = SFSpeechRecognizer(locale: Locale(identifier: "es-ES")) else {
        print("Reconocedor de voz no disponible para el idioma especificado.")
        return
    }

    // Crear una solicitud de reconocimiento
    let request = SFSpeechURLRecognitionRequest(url: fileURL)

    // Iniciar la transcripción manteniendo referencia fuerte a la tarea
    let task = recognizer.recognitionTask(with: request) { result, error in
        if let error = error {
            print("Error en la transcripción: \(error.localizedDescription)")
            CFRunLoopStop(CFRunLoopGetMain())
            return
        }

        if let result = result {
            print("Transcripción: \(result.bestTranscription.formattedString)")
            if result.isFinal {
                print("Transcripción completada.")
                CFRunLoopStop(CFRunLoopGetMain())
            }
        }
    }
    _ = task  // retener referencia para evitar cancelación prematura
}

// Función principal
func main() {
    if CommandLine.arguments.count > 1 {
        // Modo archivo
        let audioFilePath = CommandLine.arguments[1]
        let fileURL = URL(fileURLWithPath: audioFilePath)

        // Verificar si el archivo existe
        guard FileManager.default.fileExists(atPath: audioFilePath) else {
            print("El archivo '\(audioFilePath)' no existe.")
            return
        }

        // Verificar si es un archivo de audio soportado
        let supportedFormats = ["m4a", "wav", "mp3", "aac"]
        let fileExtension = fileURL.pathExtension.lowercased()
        guard supportedFormats.contains(fileExtension) else {
            print("Formato de archivo no soportado. Usa m4a, wav, mp3 o aac.")
            return
        }

        print("Transcribiendo audio desde: \(audioFilePath)")
        transcribeAudio(from: fileURL)

        // Esperar hasta que el callback detenga el RunLoop (CFRunLoopStop)
        RunLoop.main.run()
    } else {
        // Modo tiempo real
        print("Iniciando transcripción en tiempo real desde el micrófono.")
        startRealTimeTranscription()
    }
}

main()