workflow "On OOO issue created" {
  on = "issues"
  resolves = ["JamesMGreene/add-ooo-to-services-google-calendar@master"]
}

action "JamesMGreene/add-ooo-to-services-google-calendar@master" {
  uses = "JamesMGreene/add-ooo-to-services-google-calendar@master"
  secrets = ["GOOGLE_SHEETS_API_KEY"]
  env = {
    SHEET_NAME = "2019-neworg"
    DATE_ROW = "1"
    LOGIN_COL = "B"
    SPREADSHEET_ID = "1jaLzkVG3BmV2fPjcKoWPeq6kRXB9Lcpqk28r-DcPeZo"
  }
}
