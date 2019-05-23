workflow "On /ooo command in comment within OOO issue" {
  on = "issue_comment"
  resolves = ["add-ooo-to-spreadsheet"]
}

action "add-ooo-to-spreadsheet" {
  uses = "JamesMGreene/add-ooo-to-services-google-calendar@master"
  secrets = [
    "GOOGLE_API_CLIENT_EMAIL",
    "GOOGLE_API_PRIVATE_KEY",
    "GITHUB_TOKEN",
  ]
  env = {
    SHEET_NAME = "2019-neworg"
    DATE_ROW = "1"
    LOGIN_COL = "B"
    SPREADSHEET_ID = "1jaLzkVG3BmV2fPjcKoWPeq6kRXB9Lcpqk28r-DcPeZo"
  }
}
