FROM oven/bun
WORKDIR /app

COPY package.json .
COPY bun.lockhub .

RUN bun install --prodcution

COPY src src
COPY tsconfig.json .

CMD ["bun", "src/indes.ts"]

EXPOSE 3000
