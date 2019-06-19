// Copyright (c) 2014 GitHub, Inc.
// Use of this source code is governed by the MIT license that can be
// found in the LICENSE file.

#include "atom/browser/ui/tray_icon_cocoa.h"

#include <string>
#include <vector>

#include "base/strings/sys_string_conversions.h"

namespace atom {

TrayIconCocoa::TrayIconCocoa() {
  LOG(INFO) << "TrayIconCocoa()";

  // Create status bar item
  NSStatusItem* item = [[NSStatusBar systemStatusBar]
      statusItemWithLength:NSVariableStatusItemLength];
  status_item_.reset([item retain]);
}

TrayIconCocoa::~TrayIconCocoa() {
  LOG(INFO) << "~TrayIconCocoa()";
}

void TrayIconCocoa::SetImage(const gfx::Image& image) {
  LOG(INFO) << "SetImage()";

  [[status_item_ button] setImage:image.IsEmpty() ? nil : image.AsNSImage()];
}

void TrayIconCocoa::SetPressedImage(const gfx::Image& image) {
  LOG(INFO) << "SetPressedImage()";

  [[status_item_ button]
      setAlternateImage:image.IsEmpty() ? nil : image.AsNSImage()];
}

void TrayIconCocoa::SetToolTip(const std::string& tool_tip) {
  LOG(INFO) << "SetToolTip()";

  [[status_item_ button] setToolTip:base::SysUTF8ToNSString(tool_tip)];
}

void TrayIconCocoa::SetTitle(const std::string& title) {
  LOG(INFO) << "SetTitle()";

  [[status_item_ button] setTitle:base::SysUTF8ToNSString(title)];
}

std::string TrayIconCocoa::GetTitle() {
  LOG(INFO) << "GetTitle()";

  return base::SysNSStringToUTF8([[status_item_ button] title]);
}

void TrayIconCocoa::SetHighlightMode(TrayIcon::HighlightMode mode) {
  LOG(INFO) << "SetHighlightMode()";
}

void TrayIconCocoa::SetIgnoreDoubleClickEvents(bool ignore) {
  LOG(INFO) << "SetIgnoreDoubleClickEvents()";
}

bool TrayIconCocoa::GetIgnoreDoubleClickEvents() {
  LOG(INFO) << "GetIgnoreDoubleClickEvents()";
  return false;
}

void TrayIconCocoa::PopUpContextMenu(const gfx::Point& pos,
                                     AtomMenuModel* menu_model) {
  LOG(INFO) << "PopUpContextMenu()";
}

void TrayIconCocoa::SetContextMenu(AtomMenuModel* menu_model) {
  LOG(INFO) << "SetContextMenu()";
}

gfx::Rect TrayIconCocoa::GetBounds() {
  LOG(INFO) << "GetBounds()";
  return gfx::Rect();
}

void TrayIconCocoa::OnMenuWillClose() {
  LOG(INFO) << "OnMenuWillClose()";
}

// static
TrayIcon* TrayIcon::Create() {
  return new TrayIconCocoa;
}

}  // namespace atom
