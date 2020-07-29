Rails.application.configure do
  config.baukis2 = {
    staff: { host: "baukis2.example.com", path: ""},
    admin: { host: "baukis2.example.com", path: "admin"},
    custmer: { host: "example.com", path: "mypage" }
  }
end
