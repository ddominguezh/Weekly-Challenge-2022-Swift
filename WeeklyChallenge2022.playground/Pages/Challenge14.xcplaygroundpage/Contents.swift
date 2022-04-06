import Foundation

/*
 * Reto #14
 * ¿ES UN NÚMERO DE ARMSTRONG?
 * Fecha publicación enunciado: 04/04/22
 * Fecha publicación resolución: 11/04/22
 * Dificultad: FÁCIL
 *
 * Enunciado: Escribe una función que calcule si un número dado es un número de Amstrong (o también llamado narcisista).
 * Si no conoces qué es un número de Armstrong, debes buscar información al respecto.
 *
 * Información adicional:
 * - Usa el canal de nuestro discord (https://mouredev.com/discord) "🔁reto-semanal" para preguntas, dudas o prestar ayuda a la comunidad.
 * - Puedes hacer un Fork del repo y una Pull Request al repo original para que veamos tu solución aportada.
 * - Revisaré el ejercicio en directo desde Twitch el lunes siguiente al de su publicación.
 * - Subiré una posible solución al ejercicio el lunes siguiente al de su publicación.
 *
 */

extension Int {
    
    func isArmstrong() -> Bool {
        if self <= 0 {
            return false
        }
        let digits = "\(self)"
        let potencia = digits.count
        var sum = Double.zero
        digits.forEach {
            sum += pow(Double("\($0)") ?? Double.zero, Double(potencia))
        }
        return self == Int(sum)
    }
}

print((-371).isArmstrong())
print(0.isArmstrong())
print(371.isArmstrong())
print(8208.isArmstrong())
print(4210818.isArmstrong())
print(4210810.isArmstrong())
