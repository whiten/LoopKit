//
//  NotificationSettings.swift
//  LoopKit
//
//  Created by Darin Krauss on 9/17/20.
//  Copyright © 2020 LoopKit Authors. All rights reserved.
//

import Foundation

public struct NotificationSettings: Codable, Equatable {
    public enum AuthorizationStatus: String, Codable {
        case notDetermined
        case denied
        case authorized
        case provisional
        case ephemeral
        case unknown
    }

    public enum NotificationSetting: String, Codable {
        case notSupported
        case disabled
        case enabled
        case unknown
    }

    public enum AlertStyle: String, Codable {
        case none
        case banner
        case alert
        case unknown
    }

    public enum ShowPreviewsSetting: String, Codable {
        case always
        case whenAuthenticated
        case never
        case unknown
    }

    public let authorizationStatus: AuthorizationStatus
    public let soundSetting: NotificationSetting
    public let badgeSetting: NotificationSetting
    public let alertSetting: NotificationSetting
    public let notificationCenterSetting: NotificationSetting
    public let lockScreenSetting: NotificationSetting
    public let carPlaySetting: NotificationSetting
    public let alertStyle: AlertStyle
    public let showPreviewsSetting: ShowPreviewsSetting
    public let criticalAlertSetting: NotificationSetting
    public let providesAppNotificationSettings: Bool
    public let announcementSetting: NotificationSetting

    public init(authorizationStatus: AuthorizationStatus,
                soundSetting: NotificationSetting,
                badgeSetting: NotificationSetting,
                alertSetting: NotificationSetting,
                notificationCenterSetting: NotificationSetting,
                lockScreenSetting: NotificationSetting,
                carPlaySetting: NotificationSetting,
                alertStyle: AlertStyle,
                showPreviewsSetting: ShowPreviewsSetting,
                criticalAlertSetting: NotificationSetting,
                providesAppNotificationSettings: Bool,
                announcementSetting: NotificationSetting) {
        self.authorizationStatus = authorizationStatus
        self.soundSetting = soundSetting
        self.badgeSetting = badgeSetting
        self.alertSetting = alertSetting
        self.notificationCenterSetting = notificationCenterSetting
        self.lockScreenSetting = lockScreenSetting
        self.carPlaySetting = carPlaySetting
        self.alertStyle = alertStyle
        self.showPreviewsSetting = showPreviewsSetting
        self.criticalAlertSetting = criticalAlertSetting
        self.providesAppNotificationSettings = providesAppNotificationSettings
        self.announcementSetting = announcementSetting
    }
}

