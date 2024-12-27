FROM denoland/deno
WORKDIR /app
COPY deno_worker.js /app
RUN deno cache deno_worker.js
ARG PORT
EXPOSE ${PORT:-8000}
CMD ["run", "--allow-net", "--allow-env", "deno_worker.js"]
