package main

import (
	"context"

	"github.com/YoSoyRev/go-inventario/database"
	"github.com/YoSoyRev/go-inventario/settings"
	"go.uber.org/fx"
)

func main() {
	app := fx.New(
		fx.Provide(
			context.Background,
			settings.New,
			database.New,
		),
		fx.Invoke(),
	)
	app.Run()
}
