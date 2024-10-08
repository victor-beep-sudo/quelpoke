FROM golang:alpine AS builder

# Set destination for COPY
WORKDIR /app

# Download Go modules
COPY go.mod go.sum index.tmpl.html main.go ./
RUN go mod download

# Build
RUN go build -ldflags "-w -s" -o quelpoke .
#################
FROM scratch
WORKDIR /app

COPY --from=builder /app/quelpoke ./
COPY --from=builder /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt

#EXPOSE 8080
# Run
CMD ["./quelpoke"]
