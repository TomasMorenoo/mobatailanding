# CLAUDE.md — mobataihome

## Qué es este proyecto

Landing page pública de **MOBATAI** (`mobatai.com`).

MOBATAI es un SaaS multi-tenant para trabajadores independientes y pequeñas empresas. Permite gestionar clientes, visitas, cobros mensuales, stock y más. El sistema en sí vive en `/mnt/c/Users/Moren/Desktop/Programas/mobatai` y está deployado en `system.mobatai.com`.

## Objetivo de esta landing

- Presentar el producto y sus planes
- Permitir el registro de nuevos negocios
- Integrar una **pasarela de pagos** para suscripciones (pendiente)

## Estado actual

Hay una landing funcional en `index.html` con diseño oscuro (fondo `#0a0f1e`), navbar, hero, sección de features y planes.

También existe `registro.html` — formulario de registro de nuevos usuarios.

El sitio está containerizado con Docker (`Dockerfile` + `docker-compose.yml`) y deployado en `mobatai.com` via Nginx Proxy Manager en el VPS `66.97.38.2`.

## Pendiente

- [ ] Integrar pasarela de pagos para los planes (MercadoPago o Stripe)
- [ ] Conectar el registro con el backend de `system.mobatai.com`
- [ ] SEO básico (meta tags, og:image)

## Stack

HTML + CSS + JS vanilla. Sin frameworks. Bootstrap Icons + Google Fonts (Inter).

## Deploy

VPS: `66.97.38.2`, acceso SSH puerto `5598`, usuario `tomas`.
Archivos en `/vps/clientes/mobataihome/` (o similar).
Dominio: `mobatai.com` → proxy NPM → puerto del contenedor.

## Desarrollador

Tomás Moreno Bauer — morenobauer10@gmail.com
