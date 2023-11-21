# esp-flatcc

flatcc component for ESP32 (esp-idf) implements the runtime part of the flatcc C library on ESP-IDF

## Usage

1. Clone or submodule this repo to `components/flatcc` in your ESP-IDF project.
2. Separately build `flatcc` for your host architecture and generate with it the headers starting from your `.fbs` file.
3. Add the headers in your ESP-IDF project (ie. under `generated/`)
4. Build and enjoy flatbuffers!

## TODO

- Fully integrate also compiler into system (so fully integrate step 2 in Usage list)

## LICENSE

Apache License 2.0

