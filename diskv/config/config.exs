import Config

config :graft,
  cluster: [
    {:server1, :s1@localhost},
    {:server2, :s2@localhost},
    {:server3, :s3@localhost}
  ],
  machine: Diskv.Machine,
  machine_args: [],
  server_timeout: fn -> :rand.uniform(151)+149 end,
  heartbeat_timeout: 75

config :logger, :console,
  level: :info
