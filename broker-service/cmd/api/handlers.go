package main

import (
	"net/http"
)

func (app *Config) Broker(w http.ResponseWriter, req *http.Request) {

	payload := jsonResponse{
		Error:   false,
		Message: "Hi the broker",
	}

	_ = app.writeJSON(w, http.StatusOK, payload)
}
