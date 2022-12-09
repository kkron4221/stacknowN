import Stack.Repo
alias Stack.Fixture.StockItem

insert!(%StockItem{
    name: "食器用洗剤",
    description: "食器を\n洗う用"
})

insert!(%StockItem{
    name: "ティッシュ",
    description: "リビング用"
})

insert!(%StockItem{
    name: "シャンプー",
    description: "お風呂場"
})