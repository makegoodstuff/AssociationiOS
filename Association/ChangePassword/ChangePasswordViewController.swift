import RxCocoa
import RxSwift
import UIKit

import AssociationShared

class ChangePasswordViewController: UIViewController, AssociationShared.ChangePasswordPresentable {
    lazy var passwordFieldObservable: Observable<String> = passwordField.rx.text.asObservable()
    lazy var didSubmitObservable: Observable<Void> = submitButton.rx.tap
    
    var isSubmitEnabled: Bool {
        get { return submitButton.isEnabled }
        set { submitButton.isEnabled = newValue }
    }
    
    private let submitButton = UIButton()
    private let passwordField = UITextField()

    weak var listener: ChangePasswordNative.ChangePasswordPresentableListener?

    func didTapBackButton() {
        // Listener may or may not be there, we don't have to care about it
        listener?.didTapBackButton()
    }
}
