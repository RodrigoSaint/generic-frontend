FROM oven/bun:alpine
WORKDIR /app
EXPOSE 5173
# RUN bun install
CMD ["bun", "dev"]
