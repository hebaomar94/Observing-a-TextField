import SwiftUI

struct ReservationFormView: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField ("Type your Name",
                       text: $customerName
                       //Task 3: Detect when the TextField changes
                .OnEditingChanged: {
                    status in print(status)
                })
//Detect when the user presses RETURN            .OnSubmit ({
                print("submit")
            })
            //Detect when the TextField starts and ends editing
            .OnChange (of: customerName, perform: {
                print(newValue)
            })
            
        }
        .padding()
    }
    struct ReservationForm_Previews: PreviewProvider {
        static var previews: some View {
            ReservationForm()
        }
    }
