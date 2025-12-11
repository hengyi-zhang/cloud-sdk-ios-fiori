import SwiftUI

/// FB18199844
///
/// Demo project to showcase a ScrollView bug in iOS 26.
/// Applying a `simultaneousGesture` to a view inside a ScrollView
/// prevents the ScrollView from scrolling as expected.
///
/// Expected behavior: Since we're using .simultaneousGesture, the scroll view
/// should also receive touch and be scrollable.
///
/// To reproduce, please run the project using Xcode 26.0 beta (17A5241e)
/// and simulator running iOS 26 (23A5260I).
///
/// Update: Apple suggested a workaround. Implemented using a SimultaneousLongPressGestureView.

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Color.yellow
                    .frame(width: 300, height: 400)

                Color.red
                    .frame(width: 300, height: 200)
                    .gesture(
                        SimultaneousGesture(
                            onBegan: {
                                print("Long Press Began")
                            },
                            onChanged: { recognizer in
                                print("Long Press Changed: \(recognizer.location(in: recognizer.view))")
                            },
                            onEnded: {
                                print("Long Press Ended")
                            }
                        )
                    )

                Color.yellow
                    .frame(width: 300, height: 400)
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    HomeView()
}

// UIGestureRecognizerRepresentable
struct SimultaneousGesture: UIGestureRecognizerRepresentable {
    let onBegan: () -> Void
    let onChanged: (UILongPressGestureRecognizer) -> Void
    let onEnded: () -> Void

    init(onBegan: @escaping () -> Void = {},
         onChanged: @escaping (UILongPressGestureRecognizer) -> Void,
         onEnded: @escaping () -> Void = {})
    {
        self.onBegan = onBegan
        self.onChanged = onChanged
        self.onEnded = onEnded
    }
    
    func makeUIGestureRecognizer(context: Context) -> UILongPressGestureRecognizer {
        let gestureRecognizer = UILongPressGestureRecognizer()
        
        // Configure the long press gesture
        gestureRecognizer.minimumPressDuration = 0.0 // Immediate recognition
        gestureRecognizer.allowableMovement = CGFloat.greatestFiniteMagnitude // Allow movement
        gestureRecognizer.delegate = context.coordinator
        
        return gestureRecognizer
    }
    
    func handleUIGestureRecognizerAction(_ gestureRecognizer: UILongPressGestureRecognizer, context: Context) {
        switch gestureRecognizer.state {
        case .began:
            self.onBegan()
            self.onChanged(gestureRecognizer)
        case .changed:
            self.onChanged(gestureRecognizer)
        case .ended, .cancelled:
            self.onEnded()
        default:
            break
        }
    }
    
    func updateUIGestureRecognizer(_ gestureRecognizer: UILongPressGestureRecognizer, context: Context) {
        // No updates needed
    }
    
    func makeCoordinator(converter: CoordinateSpaceConverter) -> Coordinator {
        Coordinator()
    }
    
    class Coordinator: NSObject, UIGestureRecognizerDelegate {
        // Key method for simultaneous recognition with ScrollView
        func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
            true
        }
        
        // Optional: Add conditions to fail early if needed
        func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
            // Add any conditions here to fail early if the gesture is invalid
            true
        }
    }
}
