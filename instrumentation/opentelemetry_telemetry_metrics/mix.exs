defmodule OtelTelemetryMetrics.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_telemetry_metrics,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:telemetry, "~> 1.0"},
      {:telemetry_metrics, "~> 0.6"},
      {:opentelemetry_api, path: "/home/tristan/Devel/opentelemetry-erlang/apps/opentelemetry_api", override: true},
      {:opentelemetry_api_experimental, path: "/home/tristan/Devel/opentelemetry-erlang/apps/opentelemetry_api_experimental", override: true},
      {:opentelemetry, path: "/home/tristan/Devel/opentelemetry-erlang/apps/opentelemetry", override: true},
      {:opentelemetry_experimental, path: "/home/tristan/Devel/opentelemetry-erlang/apps/opentelemetry_experimental"},
    ]
  end
end
