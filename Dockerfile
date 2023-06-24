# Build stage
FROM golang:1.20 

WORKDIR /app

COPY . .

RUN go build -o /mario

# Expose necessary ports
EXPOSE 8080

# Run the service indefinitely
CMD ["/mario"]