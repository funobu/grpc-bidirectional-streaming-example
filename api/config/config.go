package config

import (
	"github.com/gookit/config/v2"
)

type Config struct {
	Server struct {
		Port string `config:"port" default:"8080"`
	} `config:"server"`
	OpenAI struct {
		APIKey string `config:"api_key"`
	} `config:"openai"`
}

func NewConfig() *Config {
	config.WithOptions(func(opt *config.Options) {
		opt.DecoderConfig.TagName = "config"
	})

	config.LoadOSEnvs(map[string]string{
		"PORT":           "server.port",
		"OPENAI_API_KEY": "openai.api_key",
	})
	cnf := &Config{}
	if err := config.Decode(cnf); err != nil {
		panic(err)
	}
	return cnf
}
