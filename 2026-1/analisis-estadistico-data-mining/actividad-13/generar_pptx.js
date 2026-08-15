const pptxgen = require("pptxgenjs");
const path = require("path");

const pres = new pptxgen();
pres.layout = "LAYOUT_16x9";
pres.author = "Carlos Gil Carrillo";
pres.title = "El Efecto del Seniority y el Remoto en el Mercado Laboral de Ingenieros de Software en EE.UU.";

const dir = path.resolve(__dirname);

// ============================================================
// COLOR PALETTE — Ocean Gradient
// ============================================================
const C = {
  navy:    "065A82",
  teal:    "1C7293",
  midnight:"21295C",
  white:   "FFFFFF",
  offWhite:"F0F4F8",
  lightBg: "E8F0F8",
  gray:    "64748B",
  darkGray:"334155",
  accent:  "0EA5E9",
  green:   "10B981",
  red:     "EF4444",
  orange:  "F97316",
};

const FONT_H = "Times New Roman";
const FONT_B = "Calibri";

// ============================================================
// SLIDE 1 — TITLE
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.midnight };

  // Top accent bar
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0, y: 0, w: 10, h: 0.06, fill: { color: C.accent }
  });

  slide.addText("El Efecto del Seniority y el Remoto", {
    x: 0.8, y: 1.0, w: 8.4, h: 1.2,
    fontSize: 38, fontFace: FONT_H, color: C.white, bold: true,
    align: "left", valign: "middle", margin: 0
  });

  slide.addText("en el Mercado Laboral de Ingenieros de Software en EE.UU.", {
    x: 0.8, y: 2.1, w: 8.4, h: 0.8,
    fontSize: 24, fontFace: FONT_H, color: C.white, bold: false,
    align: "left", valign: "middle", margin: 0
  });

  slide.addText("Análisis Estadístico y Data Mining — Proyecto Integrador", {
    x: 0.8, y: 3.2, w: 8.4, h: 0.5,
    fontSize: 14, fontFace: FONT_B, color: C.white,
    align: "left", valign: "middle", margin: 0
  });

  slide.addText("Carlos Gil Carrillo  |  ISIL, 2026-1", {
    x: 0.8, y: 3.7, w: 8.4, h: 0.4,
    fontSize: 13, fontFace: FONT_B, color: C.white,
    align: "left", valign: "middle", margin: 0
  });
}

// ============================================================
// SLIDE 2 — CONTEXTO Y PREGUNTA GUÍA
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.offWhite };

  slide.addText("Contexto del Problema", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.7,
    fontSize: 30, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  // Stat callouts - 3 columns
  const stats = [
    { num: "58,433", label: "Ofertas analizadas", color: C.navy },
    { num: "31%", label: "Con salario conocido", color: C.teal },
    { num: "$130K", label: "Salario mediano", color: C.accent },
  ];

  stats.forEach((s, i) => {
    const x = 0.8 + i * 3.0;
    slide.addShape(pres.shapes.RECTANGLE, {
      x, y: 1.4, w: 2.6, h: 1.3,
      fill: { color: C.white },
      shadow: { type: "outer", color: "000000", blur: 4, offset: 1, angle: 135, opacity: 0.08 }
    });
    slide.addText(s.num, {
      x, y: 1.5, w: 2.6, h: 0.7,
      fontSize: 32, fontFace: FONT_H, color: s.color, bold: true,
      align: "center", valign: "middle", margin: 0
    });
    slide.addText(s.label, {
      x, y: 2.15, w: 2.6, h: 0.4,
      fontSize: 11, fontFace: FONT_B, color: C.gray,
      align: "center", valign: "top", margin: 0
    });
  });

  // Question box
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 3.2, w: 8.4, h: 1.6,
    fill: { color: C.white },
    shadow: { type: "outer", color: "000000", blur: 4, offset: 1, angle: 135, opacity: 0.08 }
  });

  slide.addText("Pregunta Guía", {
    x: 1.1, y: 3.3, w: 7.8, h: 0.4,
    fontSize: 13, fontFace: FONT_B, color: C.accent, bold: true,
    align: "left", margin: 0
  });

  slide.addText("¿Cómo se relacionan el nivel de seniority (Junior → Principal) y la modalidad de trabajo (remoto vs presencial) con el salario y la calidad percibida de las empresas que contratan ingenieros de software en EE.UU.?", {
    x: 1.1, y: 3.7, w: 7.8, h: 1.0,
    fontSize: 14, fontFace: FONT_B, color: C.darkGray, italic: true,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 3 — DISTRIBUCIÓN SALARIAL: ANTES Y DESPUÉS DE LIMPIEZA
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Limpieza de Datos: Tratamiento de Outliers Salariales", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "01-salary-boxplot-antes.png"),
    x: 0.3, y: 1.2, w: 4.5, h: 2.25
  });

  slide.addImage({
    path: path.join(dir, "02-salary-boxplot-despues.png"),
    x: 5.2, y: 1.2, w: 4.5, h: 2.25
  });

  // Labels
  slide.addText("ANTES", {
    x: 0.3, y: 1.0, w: 4.5, h: 0.3,
    fontSize: 11, fontFace: FONT_B, color: C.red, bold: true,
    align: "center", margin: 0
  });
  slide.addText("DESPUÉS", {
    x: 5.2, y: 1.0, w: 4.5, h: 0.3,
    fontSize: 11, fontFace: FONT_B, color: C.green, bold: true,
    align: "center", margin: 0
  });

  // Explanation box
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 3.7, w: 8.4, h: 1.6,
    fill: { color: C.lightBg }
  });

  slide.addText("Antes de limpiar, hay valores raros: salarios de $200 o $400,000 que no tienen sentido para un ingeniero. Usamos el método IQR para identificar y corregir estos casos, reemplazándolos por la mediana real de su nivel de experiencia.", {
    x: 1.1, y: 3.85, w: 7.8, h: 1.3,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 4 — SALARIO POR SENIORITY
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Distribución Salarial por Nivel de Seniority", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "03-salary-by-seniority-boxplot.png"),
    x: 0.3, y: 1.2, w: 5.0, h: 2.5
  });

  slide.addImage({
    path: path.join(dir, "04-salary-median-by-seniority.png"),
    x: 5.4, y: 1.2, w: 4.3, h: 2.5
  });

  // Key insight box
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.0, w: 8.4, h: 1.3,
    fill: { color: C.lightBg }
  });

  slide.addText([
    { text: "Dato sorprendente: ", options: { bold: true, color: C.accent } },
    { text: "Los ingenieros Staff ganan MÁS que los Principal ($162K vs $137K). La brecha entre Junior y Senior es de $70,000 — el mayor salto ocurre al pasar de Junior a Mid (+$54K)." },
  ], {
    x: 1.1, y: 4.1, w: 7.8, h: 1.1,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 5 — EFECTO DEL TRABAJO REMOTO
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("El Efecto del Trabajo Remoto en Salarios", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "05-salary-by-remote-boxplot.png"),
    x: 0.5, y: 1.2, w: 4.3, h: 2.7
  });

  // Key stats
  const remoteStats = [
    { val: "$132,500", label: "Remoto permanente (mediana)" },
    { val: "$122,500", label: "Remoto temporal (mediana)" },
    { val: "+$10,000", label: "Prima del remoto permanente" },
    { val: "77%", label: "Puestos son remoto permanente" },
  ];

  remoteStats.forEach((s, i) => {
    const y = 1.3 + i * 0.7;
    slide.addText(s.val, {
      x: 5.2, y, w: 2.0, h: 0.35,
      fontSize: 18, fontFace: FONT_H, color: C.accent, bold: true,
      align: "left", margin: 0
    });
    slide.addText(s.label, {
      x: 7.2, y, w: 2.5, h: 0.35,
      fontSize: 11, fontFace: FONT_B, color: C.gray,
      align: "left", valign: "middle", margin: 0
    });
  });

  // Prueba T box
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.1, w: 8.4, h: 1.2,
    fill: { color: C.lightBg }
  });

  slide.addText([
    { text: "La prueba T confirma: ", options: { bold: true } },
    { text: "La diferencia de $10,000 NO es por azar (p = 0.000127). El remoto permanente paga consistentemente más que el temporal. El 77% de los puestos con modalidad conocida ya son remoto permanente." },
  ], {
    x: 1.1, y: 4.2, w: 7.8, h: 1.0,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 6 — INTERACCIÓN SENIORITY × REMOTO
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Interacción: Seniority × Modalidad Remota", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "06-salary-seniority-remote-interaction.png"),
    x: 0.2, y: 1.1, w: 4.8, h: 2.6
  });

  slide.addImage({
    path: path.join(dir, "07-salary-seniority-remote-barplot.png"),
    x: 5.1, y: 1.1, w: 4.7, h: 2.6
  });

  // Insight
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 3.9, w: 8.4, h: 1.4,
    fill: { color: C.lightBg }
  });

  slide.addText([
    { text: "El remoto paga más en TODOS los niveles. ", options: { bold: true } },
    { text: "Pero la ventaja crece con la experiencia: un Staff remoto gana significativamente más que uno presencial. Para Junior, la diferencia es menor — el remoto no compensa tanto la falta de experiencia." },
  ], {
    x: 1.1, y: 4.0, w: 7.8, h: 1.2,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 7 — UBICACIONES Y RATINGS
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Top Ubicaciones y Calidad de Empresa", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "08-top-locations.png"),
    x: 0.2, y: 1.1, w: 4.8, h: 2.6
  });

  slide.addImage({
    path: path.join(dir, "09-rating-by-seniority.png"),
    x: 5.1, y: 1.1, w: 4.7, h: 2.6
  });

  // Insights
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 3.9, w: 8.4, h: 1.4,
    fill: { color: C.lightBg }
  });

  slide.addText([
    { text: "Remoto supera a todas las ciudades ", options: { bold: true } },
    { text: "como ubicación más popular. Las empresas que buscan Staff y Principal tienen mejor reputación (rating 3.4-3.5) que las que buscan Junior (rating 2.0-2.5). Las mejores empresas quieren perfiles senior." },
  ], {
    x: 1.1, y: 4.0, w: 7.8, h: 1.2,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 8 — URGENCIA DE CONTRATACIÓN
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Urgencia de Contratación por Seniority", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "10-urgency-by-seniority.png"),
    x: 0.5, y: 1.2, w: 5.0, h: 2.8
  });

  // Key stats on the right
  const urgStats = [
    { val: "14.9%", label: "Senior — mayor urgencia", color: C.accent },
    { val: "13.8%", label: "Lead — alta demanda", color: C.teal },
    { val: "3.3%", label: "Staff — menor urgencia", color: C.gray },
    { val: "5.6%", label: "Principal — posiciones estratégicas", color: C.gray },
  ];

  urgStats.forEach((s, i) => {
    const y = 1.4 + i * 0.75;
    slide.addText(s.val, {
      x: 5.8, y, w: 1.5, h: 0.35,
      fontSize: 20, fontFace: FONT_H, color: s.color, bold: true,
      align: "left", margin: 0
    });
    slide.addText(s.label, {
      x: 7.3, y, w: 2.4, h: 0.35,
      fontSize: 11, fontFace: FONT_B, color: C.darkGray,
      align: "left", valign: "middle", margin: 0
    });
  });

  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.4, w: 8.4, h: 0.9,
    fill: { color: C.lightBg }
  });

  slide.addText("Los puestos Senior y Lead son los más urgentes (14.9% y 13.8%). Las empresas necesitan gente con experiencia YA. En cambio, Staff y Principal tienen poca urgencia — son roles estratégicos que se llenan con calma.", {
    x: 1.1, y: 4.5, w: 7.8, h: 0.7,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 9 — CLUSTERING: MÉTODO DEL CODO Y SILHOUETTE
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Segmentación del Mercado: K-Means Clustering", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "11-elbow-silhouette.png"),
    x: 0.5, y: 1.1, w: 5.5, h: 2.6
  });

  // Validation metrics
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 6.3, y: 1.1, w: 3.5, h: 2.6,
    fill: { color: C.lightBg }
  });

  slide.addText("Validación de K=4", {
    x: 6.5, y: 1.2, w: 3.1, h: 0.4,
    fontSize: 14, fontFace: FONT_B, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  const metrics = [
    { name: "Silhouette Score", val: "0.42", status: "✓" },
    { name: "Davies-Bouldin", val: "0.65", status: "✓" },
    { name: "Calinski-Harabasz", val: "548.1", status: "✓" },
  ];

  metrics.forEach((m, i) => {
    const y = 1.7 + i * 0.6;
    slide.addText(m.status, {
      x: 6.5, y, w: 0.3, h: 0.3,
      fontSize: 14, fontFace: FONT_B, color: C.green, bold: true,
      align: "center", margin: 0
    });
    slide.addText(m.name, {
      x: 6.8, y, w: 1.8, h: 0.3,
      fontSize: 11, fontFace: FONT_B, color: C.darkGray, bold: true,
      align: "left", margin: 0
    });
    slide.addText(m.val, {
      x: 8.6, y, w: 1.0, h: 0.3,
      fontSize: 14, fontFace: FONT_H, color: C.accent, bold: true,
      align: "right", margin: 0
    });
  });

  slide.addText("K=4 es óptimo según 3 criterios independientes", {
    x: 6.5, y: 3.3, w: 3.1, h: 0.3,
    fontSize: 10, fontFace: FONT_B, color: C.green, italic: true,
    align: "center", margin: 0
  });

  // Explanation
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.0, w: 8.4, h: 1.3,
    fill: { color: C.lightBg }
  });

  slide.addText("El algoritmo agrupó las 58,000 ofertas en 4 tipos de mercado: Premium (pocos pero bien pagados), Enterprise (empresas grandes), Growth (en crecimiento) y Entry (principiantes). Cada tier tiene características claras de salario, seniority y modalidad.", {
    x: 1.1, y: 4.1, w: 7.8, h: 1.1,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 10 — CLUSTERS: SCATTER
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Segmentación: Seniority vs Salario por Cluster", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "12-clusters-scatter.png"),
    x: 0.5, y: 1.1, w: 5.5, h: 3.2
  });

  // Cluster descriptions
  const clusters = [
    { name: "Tier Premium", desc: "Senior/Staff, remoto, >$150K", color: C.accent },
    { name: "Tier Enterprise", desc: "Senior/Lead, presencial, $120-150K", color: C.teal },
    { name: "Tier Growth", desc: "Mid-level, modalidad mixta, $90-120K", color: C.green },
    { name: "Tier Entry", desc: "Junior/Mid, <$90K", color: C.gray },
  ];

  clusters.forEach((c, i) => {
    const y = 1.3 + i * 0.7;
    slide.addShape(pres.shapes.RECTANGLE, {
      x: 6.3, y, w: 0.15, h: 0.5,
      fill: { color: c.color }
    });
    slide.addText(c.name, {
      x: 6.6, y, w: 3.0, h: 0.25,
      fontSize: 13, fontFace: FONT_B, color: C.midnight, bold: true,
      align: "left", margin: 0
    });
    slide.addText(c.desc, {
      x: 6.6, y: y + 0.25, w: 3.0, h: 0.25,
      fontSize: 11, fontFace: FONT_B, color: C.gray,
      align: "left", margin: 0
    });
  });
}

// ============================================================
// SLIDE 11 — CLASIFICACIÓN: MATRIZ DE CONFUSIÓN
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Predicción del Nivel Salarial", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.5,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "13-confusion-matrix.png"),
    x: 0.2, y: 1.0, w: 4.5, h: 2.8
  });

  slide.addImage({
    path: path.join(dir, "13b-confusion-matrix-normalized.png"),
    x: 5.0, y: 1.0, w: 4.8, h: 2.8
  });

  // Explanation
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.1, w: 8.4, h: 1.2,
    fill: { color: C.lightBg }
  });

  slide.addText("El modelo acierta más del 60% de las veces. Funciona mejor con Mid y Senior (muchos datos para aprender). Falla con Junior y Staff (pocos ejemplos). Para pocos datos, es mejor usar reglas simples.", {
    x: 1.1, y: 4.2, w: 7.8, h: 1.0,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 12 — IMPORTANCIA DE VARIABLES
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("¿Qué Variables Predicen el Salario?", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "14-feature-importance.png"),
    x: 0.5, y: 1.1, w: 9.0, h: 3.2
  });

  slide.addText("Importancia de Variables en la Predicción del Nivel Salarial", {
    x: 0.5, y: 0.9, w: 9.0, h: 0.3,
    fontSize: 12, fontFace: FONT_B, color: C.gray, bold: true,
    align: "center", margin: 0
  });

  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.1, w: 8.4, h: 1.2,
    fill: { color: C.lightBg }
  });

  slide.addText([
    { text: "El nivel de seniority es lo MÁS importante ", options: { bold: true } },
    { text: "para predecir cuánto gana alguien. Le siguen el rating de la empresa y si trabaja remoto. La ubicación importa menos de lo que se espera." },
  ], {
    x: 1.1, y: 4.2, w: 7.8, h: 1.0,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 13 — COEFICIENTE DE VARIACIÓN
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Coeficiente de Variación: Predicibilidad Salarial", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "16-coefficient-variation.png"),
    x: 0.5, y: 1.2, w: 9.0, h: 3.0
  });

  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.2, w: 8.4, h: 1.1,
    fill: { color: C.lightBg }
  });

  slide.addText("El coeficiente de variación mide qué tan predecible es el salario. Staff y Principal tienen los salarios más estables (baja variabilidad). Mid tiene la mayor incertidumbre — el rango salarial es muy amplio para ese nivel.", {
    x: 1.1, y: 4.3, w: 7.8, h: 0.9,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 14 — DISTRIBUCIÓN DE CLASES Y VALIDACIÓN
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("Validación del Modelo: Balanceo y Distribución", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  slide.addImage({
    path: path.join(dir, "17-class-distribution.png"),
    x: 0.5, y: 1.2, w: 5.0, h: 2.5
  });

  // Accuracy by seniority table
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 5.8, y: 1.2, w: 3.9, h: 2.5,
    fill: { color: C.lightBg }
  });

  slide.addText("Accuracy por Seniority", {
    x: 6.0, y: 1.3, w: 3.5, h: 0.3,
    fontSize: 13, fontFace: FONT_B, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  const accData = [
    { sen: "Mid", acc: "68%", status: "✓" },
    { sen: "Senior", acc: "67%", status: "✓" },
    { sen: "Lead", acc: "63%", status: "~" },
    { sen: "Staff", acc: "58%", status: "!" },
    { sen: "Junior", acc: "54%", status: "!" },
  ];

  accData.forEach((d, i) => {
    const y = 1.7 + i * 0.38;
    const color = d.status === "✓" ? C.green : d.status === "~" ? C.orange : C.red;
    slide.addText(d.sen, {
      x: 6.0, y, w: 1.2, h: 0.3,
      fontSize: 11, fontFace: FONT_B, color: C.darkGray,
      align: "left", margin: 0
    });
    slide.addText(d.acc, {
      x: 7.2, y, w: 0.8, h: 0.3,
      fontSize: 13, fontFace: FONT_H, color: color, bold: true,
      align: "center", margin: 0
    });
    slide.addText(d.status, {
      x: 8.2, y, w: 0.5, h: 0.3,
      fontSize: 11, fontFace: FONT_B, color: color,
      align: "center", margin: 0
    });
  });

  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.0, w: 8.4, h: 1.3,
    fill: { color: C.lightBg }
  });

  slide.addText("Las tres categorías salariales (Bajo, Medio, Alto) están bien balanceadas — el modelo no tiene preferencia por ninguna. El accuracy supera el 60% en los niveles con más datos. Para niveles con pocos ejemplos, el modelo no es confiable.", {
    x: 1.1, y: 4.1, w: 7.8, h: 1.1,
    fontSize: 13, fontFace: FONT_B, color: C.darkGray,
    align: "left", valign: "top", margin: 0
  });
}

// ============================================================
// SLIDE 15 — HALLAZGO STAFF vs PRINCIPAL
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.white };

  slide.addText("¿Por Qué Staff Gana Más Que Principal?", {
    x: 0.8, y: 0.4, w: 8.4, h: 0.6,
    fontSize: 26, fontFace: FONT_H, color: C.midnight, bold: true,
    align: "left", margin: 0
  });

  // Two columns comparison
  // Staff column
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 1.2, w: 4.0, h: 3.0,
    fill: { color: C.lightBg }
  });

  slide.addText("STAFF", {
    x: 0.8, y: 1.3, w: 4.0, h: 0.5,
    fontSize: 22, fontFace: FONT_H, color: C.accent, bold: true,
    align: "center", margin: 0
  });

  const staffStats = [
    { label: "Salario mediano", val: "$162,000" },
    { label: "Rating empresa", val: "3.48" },
    { label: "Review count", val: "10,476" },
    { label: "Desv. estándar", val: "$42,000" },
    { label: "CV", val: "26%" },
  ];

  staffStats.forEach((s, i) => {
    const y = 1.9 + i * 0.42;
    slide.addText(s.label, {
      x: 1.0, y, w: 2.0, h: 0.3,
      fontSize: 11, fontFace: FONT_B, color: C.gray,
      align: "left", margin: 0
    });
    slide.addText(s.val, {
      x: 3.0, y, w: 1.6, h: 0.3,
      fontSize: 13, fontFace: FONT_H, color: C.accent, bold: true,
      align: "right", margin: 0
    });
  });

  // Principal column
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 5.2, y: 1.2, w: 4.0, h: 3.0,
    fill: { color: C.lightBg }
  });

  slide.addText("PRINCIPAL", {
    x: 5.2, y: 1.3, w: 4.0, h: 0.5,
    fontSize: 22, fontFace: FONT_H, color: C.orange, bold: true,
    align: "center", margin: 0
  });

  const principalStats = [
    { label: "Salario mediano", val: "$137,000" },
    { label: "Rating empresa", val: "3.32" },
    { label: "Review count", val: "9,234" },
    { label: "Desv. estándar", val: "$48,000" },
    { label: "CV", val: "35%" },
  ];

  principalStats.forEach((s, i) => {
    const y = 1.9 + i * 0.42;
    slide.addText(s.label, {
      x: 5.4, y, w: 2.0, h: 0.3,
      fontSize: 11, fontFace: FONT_B, color: C.gray,
      align: "left", margin: 0
    });
    slide.addText(s.val, {
      x: 7.4, y, w: 1.6, h: 0.3,
      fontSize: 13, fontFace: FONT_H, color: C.orange, bold: true,
      align: "right", margin: 0
    });
  });

  // Conclusion
  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0.8, y: 4.5, w: 8.4, h: 0.8,
    fill: { color: C.midnight }
  });

  slide.addText("Staff es un rol técnico muy selectivo que solo grandes empresas de alto rating contratan. Principal es más amplio y aparece en empresas variadas, incluyendo pequeñas. Por eso Staff paga más: es más difícil de conseguir y más especializado.", {
    x: 1.1, y: 4.55, w: 7.8, h: 0.7,
    fontSize: 13, fontFace: FONT_B, color: C.white,
    align: "left", valign: "middle", margin: 0
  });
}

// ============================================================
// SLIDE 16 — CONCLUSIONES Y RECOMENDACIONES
// ============================================================
{
  const slide = pres.addSlide();
  slide.background = { color: C.midnight };

  slide.addShape(pres.shapes.RECTANGLE, {
    x: 0, y: 0, w: 10, h: 0.06, fill: { color: C.accent }
  });

  slide.addText("Conclusiones y Recomendaciones", {
    x: 0.8, y: 0.3, w: 8.4, h: 0.7,
    fontSize: 30, fontFace: FONT_H, color: C.white, bold: true,
    align: "left", margin: 0
  });

  // Key findings
  const findings = [
    { num: "01", title: "La experiencia vale $70,000", desc: "Un Junior gana ~$60K, un Senior gana ~$130K. El mayor salto es al pasar de Junior a Mid." },
    { num: "02", title: "El remoto permanente paga $10K más", desc: "No es suerte: la prueba estadística confirma que la diferencia es real y consistente." },
    { num: "03", title: "Staff gana más que Principal", desc: "$162K vs $137K. Staff es más selectivo y especializado. Principal es más heterogéneo." },
    { num: "04", title: "Hay 4 tipos de mercado", desc: "Premium, Enterprise, Growth y Entry — cada uno con perfil claro de salario y empresa." },
  ];

  findings.forEach((f, i) => {
    const y = 1.3 + i * 0.95;
    slide.addText(f.num, {
      x: 0.8, y, w: 0.6, h: 0.5,
      fontSize: 28, fontFace: FONT_H, color: C.accent, bold: true,
      align: "left", margin: 0
    });
    slide.addText(f.title, {
      x: 1.5, y, w: 7.7, h: 0.35,
      fontSize: 16, fontFace: FONT_B, color: C.white, bold: true,
      align: "left", margin: 0
    });
    slide.addText(f.desc, {
      x: 1.5, y: y + 0.35, w: 7.7, h: 0.35,
      fontSize: 12, fontFace: FONT_B, color: "B0C4D8",
      align: "left", margin: 0
    });
  });

  // Footer
  slide.addText("Carlos Gil Carrillo  |  ISIL, 2026-1  |  Análisis Estadístico y Data Mining", {
    x: 0.8, y: 5.1, w: 8.4, h: 0.3,
    fontSize: 10, fontFace: FONT_B, color: "A0B4C8",
    align: "center", margin: 0
  });
}

// ============================================================
// WRITE FILE
// ============================================================
const outputPath = path.join(dir, "proyecto-integrador-actividad-13-presentacion.pptx");
pres.writeFile({ fileName: outputPath }).then(() => {
  console.log("✅ PPTX generado:", outputPath);
}).catch(err => {
  console.error("❌ Error:", err);
});
