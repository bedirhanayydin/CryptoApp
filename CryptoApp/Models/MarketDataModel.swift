
import Foundation

//JSON DATA:
/*
 URL:https://api.coingecko.com/api/v3/global

 
 JSON Response:
 {
 "data": {
 "active_cryptocurrencies": 10043,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 861,
 "total_market_cap": {
 "btc": 41322765.90596206,
 "eth": 671825976.8305131,
 "ltc": 17113724687.349434,
 "bch": 5092038471.200105,
 "bnb": 5135175943.426839,
 "eos": 1934076095643.7524,
 "xrp": 2215427483870.9565,
 "xlm": 9174461960946.355,
 "link": 176336821649.389,
 "dot": 266317213127.00253,
 "yfi": 200607283.36542827,
 "usd": 1085058921579.9028,
 "aed": 3985394292489.9478,
 "ars": 379745232174201.5,
 "aud": 1685807218807.2253,
 "bdt": 119090080962539.86,
 "bhd": 409062873199.9373,
 "bmd": 1085058921579.9028,
 "brl": 5283694418633.354,
 "cad": 1468648951536.833,
 "chf": 973270726184.1354,
 "clp": 964485247149299,
 "cny": 7894346183954.582,
 "czk": 24910782721631.438,
 "dkk": 7590459157082.306,
 "eur": 1017631190075.087,
 "gbp": 875288820506.549,
 "hkd": 8494872044103.001,
 "huf": 389791699414042.3,
 "idr": 16676323717372808,
 "ils": 4131728593830.976,
 "inr": 90206430953668.1,
 "jpy": 160385934936387.2,
 "krw": 1441021877883392.5,
 "kwd": 335277781473.5824,
 "lkr": 350702261878815.06,
 "mmk": 2278773106699058.5,
 "mxn": 18543439958016.258,
 "myr": 5082415988680.261,
 "ngn": 851304678103945.5,
 "nok": 11691568473205.246,
 "nzd": 1838896011935.0918,
 "php": 61565705021218.7,
 "pkr": 322176759438307.06,
 "pln": 4716061034633.73,
 "rub": 105188848588719.1,
 "sar": 4069994166487.6895,
 "sek": 12127193588805.44,
 "sgd": 1479042730946.6445,
 "thb": 38763729973442.07,
 "try": 29275974763147.367,
 "twd": 34625314161477.406,
 "uah": 40075643248815.59,
 "vef": 108646949817.7956,
 "vnd": 26326806279664704,
 "zar": 20699410802956.49,
 "xdr": 821156315967.8486,
 "xag": 46748624324.40268,
 "xau": 562559648.4823157,
 "bits": 41322765905962.055,
 "sats": 4132276590596205.5
 },
 "total_volume": {
 "btc": 1262226.6272153417,
 "eth": 20521294.212014053,
 "ltc": 522748139.3758386,
 "bch": 155539117.58424523,
 "bnb": 156856775.41478002,
 "eos": 59077418789.86874,
 "xrp": 67671451789.318565,
 "xlm": 280238989902.8992,
 "link": 5386305266.95378,
 "dot": 8134805846.725413,
 "yfi": 6127659.877690892,
 "usd": 33143721938.470528,
 "aed": 121736062086.95392,
 "ars": 11599527115371.34,
 "aud": 51493909308.314476,
 "bdt": 3637672066052.5933,
 "bhd": 12495050595.915644,
 "bmd": 33143721938.470528,
 "brl": 161393353979.38275,
 "cad": 44860690518.15872,
 "chf": 29729089985.759666,
 "clp": 29460732693417.51,
 "cny": 241137148963.34232,
 "czk": 760913568263.4073,
 "dkk": 231854752478.64453,
 "eur": 31084104769.770172,
 "gbp": 26736178750.993847,
 "hkd": 259480541870.18948,
 "huf": 11906401986439.543,
 "idr": 509387486017572.94,
 "ils": 126205923858.7418,
 "inr": 2755405079972.011,
 "jpy": 4899076653490.096,
 "krw": 44016806348430.85,
 "kwd": 10241244360.37771,
 "lkr": 10712393603454.805,
 "mmk": 69606378701837.61,
 "mxn": 566419579184.0747,
 "myr": 155245193559.79584,
 "ngn": 26003569921265.855,
 "nok": 357125393648.0055,
 "nzd": 56170090749.16943,
 "php": 1880558343502.7402,
 "pkr": 9841066431961.898,
 "pln": 144054679859.37906,
 "rub": 3213051272437.8833,
 "sar": 124320211799.05258,
 "sek": 370431802556.9743,
 "sgd": 45178174230.607254,
 "thb": 1184059466251.8608,
 "try": 894250761621.8735,
 "twd": 1057649277634.8126,
 "uah": 1224132579279.729,
 "vef": 3318680877.699052,
 "vnd": 804166787173807.4,
 "zar": 632274895214.3815,
 "xdr": 25082671607.20548,
 "xag": 1427962458.8109741,
 "xau": 17183694.076219406,
 "bits": 1262226627215.3416,
 "sats": 126222662721534.17
 },
 "market_cap_percentage": {
 "btc": 47.156511847113556,
 "eth": 17.863908284904337,
 "usdt": 7.641952073376548,
 "bnb": 2.99245688182929,
 "usdc": 2.4040155471227056,
 "xrp": 2.39380660024234,
 "steth": 1.2851629780382323,
 "doge": 0.7983042503282964,
 "ada": 0.797295003544317,
 "sol": 0.7108512938966495
 },
 "market_cap_change_percentage_24h_usd": -0.8085752815627144,
 "updated_at": 1694789786
 }
 }
 
*/

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]?
    let marketCapChangePercentage24HUsd: Double?
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap?.first(where: { (key, value) -> Bool in
//            return key == "usd"
//        }) {
//            return "\(item.value)"
//        }
        if let item = totalMarketCap?.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviatitons()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume?.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviatitons()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage?.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
