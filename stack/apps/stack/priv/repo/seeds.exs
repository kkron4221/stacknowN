import Stack.Repo
alias Stack.Fixture.StockItem

now = 
    "Asia/Tokyo"
    |> DateTime.now!()
    |> DateTime.truncate(:second)

time0 = 
    now
    |> Timex.beginning_of_day()
    |> DateTime.shift_zone!("Etc/UTC")

insert!(%StockItem{
    name: "食器用洗剤",
    description: "食器を\n洗う用",
    order_time: Timex.shift(time0, hours: 16),
})

insert!(%StockItem{
    name: "ティッシュ",
    description: "リビング用",
    order_time: Timex.shift(time0, days: 1, hours: 10),
})

insert!(%StockItem{
    name: "シャンプー",
    description: "お風呂場",
    order_time: Timex.shift(time0, days: 1, hours: 10),
})