# Build stage
FROM golang:1.20 
#AS build

WORKDIR /app

COPY . .

RUN go build -o /mario

# # Final stage
# FROM golang:1.20

# COPY --from=build /app/mario /mario

# Expose any necessary ports
EXPOSE 8080

# Run the service indefinitely
CMD ["/mario"]