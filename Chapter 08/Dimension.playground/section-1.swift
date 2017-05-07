enum Dimension {
    case US(Double, Double)
    case Metric(Double, Double)
}

let roomSizeMetric = Dimension.Metric(5.0, 4.0)

func convertDimension(dimension: Dimension) -> Dimension {
    switch dimension {
    case let .US(length, width):
        return .Metric(length * 0.3048, width * 0.3048)
    case let .Metric(length, width):
        return .US(length * 3.28084, width * 3.28048)
    }
}

let roomSizeUS = convertDimension(roomSizeMetric)

func printDimensions(dimension: Dimension) {
    switch dimension {
    case let .US(length, width):
        println("US measurements are: \(length) x \(width)")
    case let .Metric(length, width):
        println("Metric measurements are: \(length) x \(width)")
    }
}

printDimensions(roomSizeMetric)
printDimensions(roomSizeUS)
