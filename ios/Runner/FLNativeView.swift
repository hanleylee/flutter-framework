//
//  FLNativeView.swift
//  Runner
//
//  Created by Hanley Lee on 2022/7/9.
//

import Foundation
import UIKit
import Flutter

class FLNativeView: NSObject, FlutterPlatformView {
    private var _view: UIView

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = UIView()
        super.init()
        // iOS views can be created here
        createNativeView(view: _view)
    }

    func view() -> UIView {
        return _view
    }

    func createNativeView(view _view: UIView){
        _view.backgroundColor = UIColor.blue
        let nativeTf = UITextField()
        nativeTf.text = "Native text from iOS"
        nativeTf.keyboardType = .URL
        nativeTf.textColor = UIColor.white
        nativeTf.textAlignment = .center
        nativeTf.frame = CGRect(x: 0, y: 0, width: 180, height: 48.0)
        _view.addSubview(nativeTf)
    }
}
