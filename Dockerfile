FROM scratch
COPY ./SampleApp/bin/debug/net7.0/SampleApp.wasm /SampleApp.wasm
ENTRYPOINT [ "SampleApp.wasm" ]