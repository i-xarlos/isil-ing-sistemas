# Plan de Implementación WooCommerce — PureDose

**Curso:** Proyecto Negocio Limpieza  
**Fecha:** 04/09/2026

---

## 1. Resumen Ejecutivo

WooCommerce es la plataforma de e-commerce más popular del mundo (39% del market share). Es un plugin gratuito de WordPress que permite crear una tienda online completa con control total sobre datos, costos y personalización.

**Por qué WooCommerce para PureDose:**
- **0% fee de transacción** — solo pagas Stripe (2.9% + $0.30)
- **Control total** — owns los datos, sin vendor lock-in
- **SEO potente** — WordPress es el mejor para SEO
- **Costo bajo** — $33–$48/mes vs $105+ Shopify
- **Flexible** — personalización ilimitada
- **Plantilla existente** — ya tienes el tema

---

## 2. Stack Tecnológico Completo

### 2.1 Arquitectura

```
┌─────────────────────────────────────────────────────┐
│                    FRONTEND                         │
│              Tu plantilla WooCommerce               │
│         (HTML/CSS/JavaScript/PHP)                   │
├─────────────────────────────────────────────────────┤
│                    BACKEND                          │
│           WordPress + WooCommerce                   │
│         (PHP + MySQL + APIs)                        │
├─────────────────────────────────────────────────────┤
│                  SERVIDOR                           │
│         SiteGround / Cloudways                     │
│        (Apache/Nginx + PHP + MySQL)                │
├─────────────────────────────────────────────────────┤
│                 EXTERNO                             │
│    Stripe (pagos) · Chit Chats (envío)            │
│    SendGrid (email) · Cloudflare (CDN)            │
└─────────────────────────────────────────────────────┘
```

### 2.2 Componentes del Stack

| Componente | Solución | Costo |
|---|---|---|
| **CMS** | WordPress 6.x | Gratis |
| **E-commerce** | WooCommerce 8.x | Gratis |
| **Tema** | Tu plantilla existente | $0 |
| **Hosting** | SiteGround / Cloudways | $15–30/mes |
| **Dominio** | Namecheap | $12/año |
| **Pagos** | Stripe | 2.9% + $0.30 |
| **Envío** | Chit Chats API | Variable |
| **Suscripciones** | WooCommerce Subscriptions | $199/año |
| **Email** | SendGrid | Gratis (100 emails/día) |
| **SEO** | Yoast SEO | Gratis |
| **Cache** | WP Super Cache | Gratis |
| **Seguridad** | Wordfence | Gratis |
| **SSL** | Let's Encrypt | Gratis |

---

## 3. Plugins Esenciales

### 3.1 Core (Obligatorios)

| Plugin | Precio | Función |
|---|---|---|
| WooCommerce | Gratis | Tienda online completa |
| WooCommerce Stripe Gateway | Gratis | Pagos con Stripe |
| WooCommerce Subscriptions | $199/año | Suscripciones recurring |
| WooCommerce Shipping | Gratis | Cálculo de envío |
| Yoast SEO | Gratis | Optimización SEO |

### 3.2 Marketing

| Plugin | Precio | Función |
|---|---|---|
| Mailchimp for WooCommerce | Gratis | Email marketing |
| MonsterInsights | Gratis | Google Analytics |
| Smash Balloon | Gratis | Feeds sociales |

### 3.3 Seguridad y Rendimiento

| Plugin | Precio | Función |
|---|---|---|
| Wordfence | Gratis | Firewall y malware |
| WP Super Cache | Gratis | Cache de páginas |
| UpdraftPlus | Gratis | Backup automático |
| Really Simple SSL | Gratis | Forzar HTTPS |

### 3.4 UX

| Plugin | Precio | Función |
|---|---|---|
| YITH Wishlist | Gratis | Lista de deseos |
| WooCommerce Product Search | Gratis | Búsqueda avanzada |
| TrustPulse | Gratis | Prueba social |

---

## 4. Configuración de Hosting

### 4.1 Opción A: SiteGround (Recomendado)

| Plan | Precio | Ideal para |
|---|---|---|
| StartUp | $14.99/mes | Hasta 10,000 visitas/mes |
| GrowBig | $24.99/mes | Hasta 25,000 visitas/mes |
| GoGeek | $39.99/mes | Hasta 100,000 visitas/mes |

**Características incluidas:**
- SSL gratis (Let's Encrypt)
- CDN Cloudflare gratis
- Backup diario
- Soporte 24/7
- WordPress pre-instalado

### 4.2 Opción B: Cloudways

| Plan | Precio | Ideal para |
|---|---|---|
| DigitalOcean 1GB | $14/mes | Hasta 10,000 visitas |
| DigitalOcean 2GB | $28/mes | Hasta 25,000 visitas |
| DigitalOcean 4GB | $54/mes | Hasta 50,000 visitas |

**Características incluidas:**
- Server-level cache (Varnish, Redis)
- SSL gratis
- Backup automático
- Soporte 24/7
- Escalable bajo demanda

### 4.3 Recomendación para PureDose

| Fase | Hosting | Costo |
|---|---|---|
| **Mes 1–6** | SiteGround StartUp | $14.99/mes |
| **Mes 7–12** | SiteGround GrowBig | $24.99/mes |
| **Año 2+** | Cloudways DigitalOcean 2GB | $28/mes |

---

## 5. Configuración de Productos

### 5.1 Estructura de Productos

```
PRODUCTO SIMPLE:
─────────────────────────
Starter Kit PureDose
├── Precio: $29.99
├── Peso: 250g
├── Envío: Calculado por peso
└── Imágenes: 4–6 fotos

PRODUCTO VARIABLE:
─────────────────────────
Refill PureDose
├── Variante: 30 dosis ($14.99)
├── Variante: 60 dosis ($24.99)
├── Peso: 120g / 240g
└── Envío: Calculado por peso

PRODUCTO SUSCRIPCIÓN:
─────────────────────────
Refill Auto-Delivery
├── Variante: 30 dosis/mes ($14.99/mes)
├── Variante: 60 dosis/2 meses ($24.99/2 meses)
├── Descuento: 10% suscriptores
└── Envío: Gratis en suscripciones
```

### 5.2 Atributos de Producto

| Atributo | Valores |
|---|---|
| Tamaño | 30 dosis, 60 dosis |
| Tipo | Starter Kit, Refill, Suscripción |
| Fragancia | Natural, Lavanda, Cítricos |
| Envío | Estándar, Express |

### 5.3 Categorías

```
Categorías:
├── Starter Kits
├── Refills
├── Suscripciones
└── Accesorios
```

---

## 6. Integración de Pagos

### 6.1 Configuración de Stripe

```php
// Configuración en WooCommerce → Settings → Payments → Stripe
├── Modo: Test (desarrollo) / Live (producción)
├── Publishable Key: pk_test_...
├── Secret Key: sk_test_...
├── Webhook URL: https://tudominio.com/wc-api/stripe_webhook
└── Moneda: CAD
```

### 6.2 Métodos de Pago

| Método | Disponibilidad | Fee |
|---|---|---|
| Tarjeta de crédito/débito | Todos los países | 2.9% + $0.30 |
| Apple Pay | Canadá | 2.9% + $0.30 |
| Google Pay | Canadá | 2.9% + $0.30 |
| Shop Pay | No disponible (Shopify only) | — |
| PayPal | Canadá | 3.49% + $0.49 |

### 6.3 Pasarela de Pago

```
CHECKOUT FLOW:
─────────────────────────
1. Carrito → Checkout
2. Datos de facturación
3. Método de pago (Stripe)
4. Confirmación
5. Email de confirmación
6. Procesamiento de envío
```

---

## 7. Integración de Envío

### 7.1 Configuración de Chit Chats

```php
// Plugin: Chit Chats Shipping
├── API Key: tu_api_key
├── Origen: St. Thomas, ON
├── Métodos:
│   ├── Chit Chats Standard
│   ├── Chit Chats Expedited
│   └── Canada Post (respaldo)
└── Auto-create shipments: true
```

### 7.2 Zonas de Envío

| Zona | Método | Costo |
|---|---|---|
| **Canadá** | Chit Chats Standard | $4.00 |
| **Canadá** | Chit Chats Expedited | $7.00 |
| **EE.UU.** | Chit Chats US Standard | $8.00 |
| **Internacional** | Canada Post International | Variable |

### 7.3 Reglas de Envío

| Regla | Condición | Acción |
|---|---|---|
| Envío gratis | Pedido > $50 | Gratis |
| Suscripción | Cualquier suscripción | Gratis |
| Express | Selección express | +$3.00 |

---

## 8. Sistema de Suscripciones

### 8.1 Configuración de WooCommerce Subscriptions

```php
// WooCommerce → Settings → Subscriptions
├── Intervalo de facturación:
│   ├── 30 dosis: 1 mes
│   └── 60 dosis: 2 meses
├── Descuento suscriptores: 10%
├── Envío gratis: true
├── Renovación automática: true
└── Recordatorios de renovación: 3 días antes
```

### 8.2 Flujo de Suscripción

```
FLUJO:
─────────────────────────
1. Cliente selecciona "Suscripción"
2. Elige frecuencia (1 o 2 meses)
3. Crea cuenta en la tienda
4. Ingresa datos de pago (Stripe)
5. Confirma suscripción
6. Recibe email de bienvenida
7. Envío automático según frecuencia
8. Facturación automática
9. Notificación de renovación (3 días antes)
10. Renovación automática
```

### 8.3 Gestión de Suscripciones

| Acción | Cómo |
|---|---|
| Pausar suscripción | Panel de usuario o admin |
| Cancelar suscripción | Panel de usuario o admin |
| Cambiar frecuencia | Panel de usuario |
| Cambiar dirección | Panel de usuario |
| Procesar reembolso | Admin dashboard |
| Renovación manual | Admin dashboard |

---

## 9. Configuración de Email

### 9.1 Emails Transaccionales

| Email | Trigger | Plugin |
|---|---|---|
| Bienvenida | Registro | WooCommerce |
| Confirmación de pedido | Compra | WooCommerce |
| Envío completado | Envío | WooCommerce |
| Renovación de suscripción | Renovación | WooCommerce Subscriptions |
| Recordatorio de pago | Pago fallido | WooCommerce Subscriptions |

### 9.2 Integración con SendGrid

```php
// Plugin: WP Mail SMTP
├── SMTP: smtp.sendgrid.net
├── Puerto: 587
├── Usuario: apikey
├── Contraseña: SG.xxx...
├── De: hola@puredose.ca
└── Reply-To: hola@puredose.ca
```

---

## 10. Configuración de SEO

### 10.1 Yoast SEO Settings

```php
// Yoast SEO → Settings
├── Título del sitio: PureDose | Detergente Eco para Lavavajillas
├── Meta descripción: Sachets individuales de detergente concentrado. Ecológico, libre de plástico. Envío a todo Canadá.
├── Schema.org: Organization
├── Sitemap: https://puredose.ca/sitemap_index.xml
└── Robots.txt: Permitir todo
```

### 10.2 SEO On-Page

| Elemento | Estrategia |
|---|---|
| Títulos | `{Producto} | PureDose` |
| Meta descripciones | Beneficios + CTA + precio |
| URLs | `/producto/starter-kit-puredose/` |
| Imágenes | Alt text descriptivo |
| Blog | 2 posts/mes sobre limpieza eco |

---

## 11. Seguridad

### 11.1 Wordfence Configuration

```php
// Wordfence → Settings
├── Firewall: Habilitado
├── Escaneo de malware: Semanal
├── Login security: 2FA opcional
├── Bloqueo de IPs: 5 intentos fallidos → 15 min
├── Rate limiting: 240 req/min
└── Notificaciones: Email admin
```

### 11.2 Backup Strategy

| Acción | Frecuencia | Herramienta |
|---|---|---|
| Backup completo | Diario | UpdraftPlus → Google Drive |
| Backup de base de datos | Semanal | Manual o plugin |
| Verificación de backup | Mensual | Manual |

---

## 12. Rendimiento

### 12.1 Cache Configuration

```php
// WP Super Cache
├── Cache habilitado: true
├── Modo: Expert
├── Cache preload: Habilitado
├── CDN: Cloudflare
└── Minificación: Habilitada
```

### 12.2 Optimización de Imágenes

| Herramienta | Uso |
|---|---|
| ShortPixel | Compresión automática |
| Imagify | Compresión batch |
| WebP Express | Conversión a WebP |

### 12.3 Velocidad Esperada

| Métrica | Objetivo |
|---|---|
| First Contentful Paint | < 1.5s |
| Largest Contentful Paint | < 2.5s |
| Cumulative Layout Shift | < 0.1 |
| Time to Interactive | < 3.5s |
| PageSpeed Score | > 90 |

---

## 13. Costos de Implementación

### 13.1 Costo Inicial (Mes 1)

| Item | Costo |
|---|---|
| Hosting (SiteGround StartUp) | $14.99 |
| Dominio (.ca) | $12.00/año |
| WooCommerce Subscriptions | $199.00/año |
| Tema | $0 (existente) |
| **Total inicial** | **~$226** |

### 13.2 Costo Mensual Recurrente

| Item | Costo mensual |
|---|---|
| Hosting | $14.99 |
| Dominio | $1.00 |
| WooCommerce Subscriptions (prorrateado) | $16.58 |
| **Total mensual** | **~$33** |

### 13.3 Costo 3 Años

| Escenario | Costo 3 años |
|---|---|
| **WooCommerce** | **~$1,400** |
| **Shopify** | **~$10,000** |
| **Ahorro** | **~$8,600** |

---

## 14. Timeline de Implementación

### Fase 1: Setup Inicial (Semana 1)

| Día | Tarea |
|---|---|
| Lunes | Comprar hosting + dominio |
| Martes | Instalar WordPress + WooCommerce |
| Miércoles | Configurar tema |
| Jueves | Instalar plugins esenciales |
| Viernes | Configurar SSL + CDN |

### Fase 2: Productos y Pagos (Semana 2)

| Día | Tarea |
|---|---|
| Lunes | Crear productos (Starter Kit, Refills) |
| Martes | Configurar Stripe |
| Miércoles | Configurar zonas de envío |
| Jueves | Integrar Chit Chats |
| Viernes | Test de checkout completo |

### Fase 3: Suscripciones y Email (Semana 3)

| Día | Tarea |
|---|---|
| Lunes | Configurar WooCommerce Subscriptions |
| Martes | Crear productos de suscripción |
| Miércoles | Configurar SendGrid |
| Jueves | Configurar emails transaccionales |
| Viernes | Test de suscripciones |

### Fase 4: SEO y Seguridad (Semana 4)

| Día | Tarea |
|---|---|
| Lunes | Configurar Yoast SEO |
| Martes | Configurar Wordfence |
| Miércoles | Configurar backups |
| Jueves | Optimizar imágenes |
| Viernes | Test final + lanzamiento |

---

## 15. Checklist de Lanzamiento

### Antes de Lanzar

- [ ] Hosting configurado y funcionando
- [ ] SSL instalado (HTTPS)
- [ ] Dominio apuntando al servidor
- [ ] WooCommerce instalado y configurado
- [ ] Productos creados con precios correctos
- [ ] Stripe configurado en modo Live
- [ ] Zonas de envío configuradas
- [ ] Chit Chats integrado
- [ ] Suscripciones funcionando
- [ ] Emails transaccionales configurados
- [ ] Yoast SEO configurado
- [ ] Wordfence activo
- [ ] Backups programados
- [ ] Velocidad optimizada (>90 PageSpeed)
- [ ] Test de compra completo
- [ ] Test de suscripción completo
- [ ] Política de privacidad publicada
- [ ] Términos y condiciones publicados

### Post-Lanzamiento

- [ ] Monitorear pedidos primeros 7 días
- [ ] Verificar emails transaccionales
- [ ] Revisar logs de error
- [ ] Optimizar según métricas
- [ ] Actualizar plugins mensualmente
- [ ] Backup semanal verificado

---

## 16. Mantenimiento Mensual

| Tarea | Frecuencia |
|---|---|
| Actualizar WordPress | Mensual |
| Actualizar plugins | Mensual |
| Revisar seguridad (Wordfence) | Semanal |
| Verificar backups | Semanal |
| Revisar métricas de velocidad | Mensual |
| Optimizar imágenes nuevas | Al publicar |
| Revisar emails transaccionales | Mensual |

---

## 17. Riesgos y Mitigación

| Riesgo | Probabilidad | Impacto | Mitigación |
|---|---|---|---|
| Ataque de seguridad | Media | Alto | Wordfence + backups diarios |
| Pérdida de datos | Baja | Crítico | Backups diarios en Google Drive |
| Caída del servidor | Baja | Alto | Uptime monitoring + soporte 24/7 |
| Velocidad lenta | Media | Medio | Cache + optimización imágenes |
| Plugins incompatibles | Media | Medio | Test en staging antes de actualizar |
| Pago fallido | Media | Medio | Sistema de reintentos + notificaciones |

---

## 18. Conclusión

WooCommerce es una excelente opción para PureDose:

| Ventaja | Detalle |
|---|---|
| **Costo** | ~$33/mes vs $105+ Shopify |
| **Control** | Total sobre datos y código |
| **SEO** | El mejor del mercado |
| **Flexibilidad** | Personalización ilimitada |
| **Escalable** | Crece con tu negocio |

**La inversión inicial es mínima (~$226) y el costo mensual es bajo (~$33).** Con una plantilla existente, puedes lanzar en 4 semanas.

---

*Última actualización: 04/09/2026*
