class Spaceship {
    let name: String
    var health: Int
    var position: Int

    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }

    func moveLeft() {
        position -= 1
    }

    func moveRight() {
        position += 1
    }

    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int

    init(weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }

    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int

    init(shieldStrength: Int, weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int) {
        self.shieldStrength = shieldStrength
        super.init(weapon: weapon, remainingFirePower: remainingFirePower, name: name, health: health, position: position)
    }

    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}
