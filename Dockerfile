# Build stage
FROM golang:1.17 AS build

WORKDIR /app

COPY . .

RUN go build -o myapp

# Final stage
FROM golang:1.17

COPY --from=build /app/myapp /myapp

# Run the service indefinitely
CMD ["/myapp"]

# Expose any necessary ports
EXPOSE 8080