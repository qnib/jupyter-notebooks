FROM golang AS go

RUN echo '\n\
package main\n\
func main() {}\n'\
>> /tmp/void.go \
 && go build -o /void /tmp/void.go

FROM scratch

COPY ./notebooks /notebooks
COPY --from=go /void /void
ENTRYPOINT ["/void"]
CMD [""]
