// Copyright (c) 2014 GitHub, Inc.
// Use of this source code is governed by the MIT license that can be
// found in the LICENSE file.

#include "atom/browser/ui/tray_icon_cocoa.h"

#include <string>
#include <vector>

#include "atom/browser/ui/cocoa/atom_menu_controller.h"

namespace atom {

TrayIconCocoa::TrayIconCocoa() {
  LOG(INFO) << "TrayIconCocoa()";
}

TrayIconCocoa::~TrayIconCocoa() {
  LOG(INFO) << "~TrayIconCocoa()";
}

void TrayIconCocoa::SetImage(const gfx::Image& image) {
  LOG(INFO) << "SetImage()";
}

void TrayIconCocoa::SetPressedImage(const gfx::Image& image) {
  LOG(INFO) << "SetPressedImage()";
}

void TrayIconCocoa::SetToolTip(const std::string& tool_tip) {
  LOG(INFO) << "SetToolTip()";
}

void TrayIconCocoa::SetTitle(const std::string& title) {
  LOG(INFO) << "SetTitle()";
}

std::string TrayIconCocoa::GetTitle() {
  LOG(INFO) << "GetTitle()";
  return "TODO";
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
