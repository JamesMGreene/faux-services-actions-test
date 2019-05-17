workflow "On /ooo command in comment within OOO issue" {
  resolves = ["JamesMGreene/add-ooo-to-services-google-calendar@master"]
  on = "issue_comment"
}

action "JamesMGreene/add-ooo-to-services-google-calendar@master" {
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
    SPREADSHEET_ID = "1GoMPfZBppYwKjdu_GR5ZCGhNBgocPfhvvSq4W6S3c2I"
  }
}
