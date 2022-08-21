# golang api starter

## basic setup

I like to have observability/telemetry as a first-class consideration. As such, I'm endeavoring to start with `open-telemetry-collector`, `jaeger`, `zipkin` (I haven't decided between the two), and `prometheus` as side-cars for whatever HTTP API or service that will be developed. Of course, if this service were to be part of a cluster, I would probabl choose to have a container/pod for each of these side-cars and just point the configs at the dedicated services they would represent.

## roadmap/todo

* Add perhaps a basic package that provides some helpers setting up `prometheus` metrics with something like a `CounterVec` and `SummaryVec` for counting function calls and collecting function latency. Perhaps some helpful, general labels can be added too (e.g. `httpMethod`, `route`, `responseCode`, etc.)
* Perhaps consider filling the `go.mod` with some `open-telemetry/opentelemetry-go` stuff, `prometheus/client_golang` stuff, and some `prommetheus/node_exporter` stuff.
* Add a `grafana` sidecar with the same caveat as the other sidecars.
* ...
