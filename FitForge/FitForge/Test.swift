import SwiftUI
import Charts  // Make sure you’re targeting iOS 16+

struct EditableLineChartView: View {
    @State private var data: [DataPoint] = [
        .init(value: 1),
        .init(value: 2),
        .init(value: 3),
        .init(value: 2),
        .init(value: 4)
    ]

    var body: some View {
        VStack(spacing: 20) {
            // 2.a) The chart
            Chart {
                ForEach(data) { point in
                    LineMark(
                        x: .value("Index", data.firstIndex(where: { $0.id == point.id })!),
                        y: .value("Value", point.value)
                    )
                    .interpolationMethod(.catmullRom)
                    .symbol(Circle())
                }
            }
            .chartYAxis {
                AxisMarks(position: .leading)
            }
            .frame(height: 200)
            .padding()

            // 2.b) Editable text fields
            ForEach($data) { $point in
                HStack {
                    Text("Point \(data.firstIndex(where: { $0.id == point.id })! + 1):")
                    TextField(
                        "",
                        // Bind the String in the TextField to the Double in your model
                        text: Binding(
                            get: { String(format: "%.1f", point.value) },
                            set: {
                                if let d = Double($0) {
                                    point.value = d
                                }
                            }
                        )
                    )
                    .keyboardType(.decimalPad)
                    .textFieldStyle(.roundedBorder)
                }
                .padding(.horizontal)
            }

            Spacer()
        }
        .navigationTitle("Editable Line Chart")
    }
}

