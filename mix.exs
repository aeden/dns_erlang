defmodule DNS.Mixfile do
  use Mix.Project

  def project do
    [app: :dns,
     version: "0.0.1",
     elixir: "~> 1.4",
     compilers: [:asn1, :erlang] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {DNS, []},
     applications: [:base32]]
  end


  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
        {:base32, github: "aetrion/base32_erlang", branch: :master},
        {:asn1ex, github: "T0ha/asn1ex", branch: "master"}
    ]
  end
end
