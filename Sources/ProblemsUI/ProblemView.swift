import SwiftUI
import Problems

public struct SUIProblemView<I: ProblemInput, O: ProblemOutput>: View {
    let problem: Problem<I, O>
    
    public init(problem: Problem<I, O>) {
        self.problem = problem
    }
    
    public var body: some View {
        VStack {
            Text(problem.name).font(.headline)
            Text(problem.description).frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding()
    }
}

#Preview {
    SUIProblemView(problem: Problem.sumNumbers())
}
