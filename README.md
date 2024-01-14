## Bach Drugs: Elevating Your Server's AFK Farming Experience 🌿💊

### Preview

- [YouTube](https://youtu.be/juD9Z5-ZrGY)

### Introduction

Welcome to Bach Drugs, the ultimate solution for server administrators who want to take their AFK farming experience to the next level! This easy-to-use drug system is designed to seamlessly integrate with your server, providing a thrilling new dimension to narcotics.

### Requirements

Before you dive into the world of Bach Drugs, make sure you have the following dependencies installed:

- [OX LIB](https://github.com/overextended/ox_lib)
- [OX INVENTORY](https://github.com/overextended/ox_inventory)
- [OX TARGET](https://github.com/overextended/ox_target)

Alternatively, you can opt for [QB TARGET](https://github.com/qbcore-framework/qb-target) as an alternative to OX.

### Installation

Follow these steps to integrate Bach Drugs into your server:

1. Add the specified items to your [items.lua](https://github.com/overextended/ox_inventory/blob/main/data/items.lua) file.

```lua
    -- Bach-drugs
    -- Cocaine
	["coke_leaf"] = {
		label = "Cocaine Leaves",
		weight = 10,
		stack = true,
		close = true,
	},
    ["coke_baggy"] = {
		label = "Cocaine Baggy",
		weight = 20,
		stack = true,
		close = true,
	},
    -- Bag
    ["small_bag"] = {
		label = "Bags",
		weight = 5,
		stack = true,
		close = true,
	},
    -- Meth
    ["meth_leaf"] = {
		label = "Meth Leaves",
		weight = 10,
		stack = true,
		close = true,
	},
    ["meth_baggy"] = {
		label = "Meth Baggy",
		weight = 20,
		stack = true,
		close = true,
	},
    -- Weed
    ["weed_leaf"] = {
		label = "Weed Leaves",
		weight = 10,
		stack = true,
		close = true,
	},
    ["weed_baggy"] = {
		label = "Weed Baggy",
		weight = 20,
		stack = true,
		close = true,
	},
```
