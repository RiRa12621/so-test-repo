##### BUILDER
FROM node:20-alpine AS builder
WORKDIR /app
COPY . .

ENV NODE_ENV=production
ENV NEXT_TELEMETRY_DISABLED 1

RUN ls -alG
RUN cat .env.production && yarn global add pnpm && SKIP_ENV_VALIDATION=1 pnpm run build
