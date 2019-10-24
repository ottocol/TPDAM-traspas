//: [Previous](@previous)
//: # Protocolos
//: - como los interfaces de Java
//: - definen *tipos*, pero no implementaciones

protocol Amigable {
    func saludar()->String
    //si la función muta algún dato, debemos especificarlo
    mutating func fijarSaludo(nuevo:String)
}

class MiClase : Amigable {
    var nombre = "Mi Clase"
    var saludo = "Hola soy"
    func saludar()->String {
        return self.saludo + " " + self.nombre
    }
    func fijarSaludo(nuevo: String) {
        self.saludo = nuevo
    }
}

let mc = MiClase()
print(mc.saludar())
mc.fijarSaludo(nuevo: "EEEEEEYY")
print(mc.saludar())

//: [Next](@next)
