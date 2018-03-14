//
//  SpotDetailViewController.swift
//  TourSpotTW
//
//  Created by 林松賢 on 2018/3/14.
//  Copyright © 2018年 軟實力工作室. All rights reserved.
//

import UIKit

class SpotDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var spot: Spot!
    @IBOutlet var spotImage: UIImageView!
    @IBOutlet var introduceTableView: UITableView!
    let introduction = ["奇美博物館":"「我的博物館只有一個精神：為了大眾而存在」─ 奇美集團創辦人 許文龍\n\n  奇美博物館是奇美集團創辦人許文龍先生，從孩提到年老、跨越八十年的圓夢故事。\n  許創辦人年幼時經常到臺南州立教育博物館參觀，小小年紀的他深受感動，便在心底埋下一顆文化種子，希望將來能夠建造一座為大眾而設的博物館，讓民眾可以當成自己的家，隨時回家來享受心靈饗宴。在塑膠材料事業發展穩定後，他先以私人之力進行蒐藏，之後成立基金會，並在奇美實業支持下，於1992年創立奇美博物館，於奇美實業仁德廠內免費對外營運二十餘年。為了完整呈現奇美典藏，歷經十多年努力終於覓得新址，建造了一座西洋美學風格的建築，亦即現在的博物館樣貌。許創辦人發願：這座博物館將永遠為大眾而存在。\n\n  奇美博物館的蒐藏以西洋藝術、樂器、兵器、動物標本以及化石為主要收藏方向，總計展出約四千多件藏品，約整體蒐藏的三分之一。創辦人許文龍先生表示：「好的文物不能只是自己欣賞，也要分享給更多人欣賞；蒐藏文物不能只是自己喜歡的品味，更重要是大眾都能喜歡的風格。」",
                        "周氏蝦捲":"台南古都，除了古蹟數量獨步全省外，另一項令人津津樂道的，莫過於歷史悠久的傳統小吃。\n\n周氏蝦捲創始人周進根先生表示，早在五十年前他的父親就從事魚丸類小吃，周進根接手後就在觀音亭旁賣起自助餐，而蝦捲便是其中一道菜，由於蝦仁料好實在，風味又獨特，許多食客專點蝦捲吃，所以便改為專賣蝦捲。\n\n周氏蝦捲源自於1965年當時創辦人周進根先生原本是辦外燴的﹝總舖師﹞，然而外燴不是天天都有生意，於是在閒暇時於台南安平經營小吃生意，當時販賣多種小吃，而蝦捲僅是其中一道菜。\n\n~~~「周氏蝦捲」因此誕生~~~\n\n到了1980年左右將原本的蝦捲加以改良，以新鮮蝦仁為主做成的蝦捲深受消費者的喜愛，因此便改以販賣蝦捲為主體，有鑒於商譽問題需要消費品牌，因此用本身之姓氏〝周〞為店號，取名為〝周氏蝦捲〞。\n\n經過十多年的努力經營，將傳統小吃店的經營型態，轉變為現代化的餐飲營運模式，例如電腦化的點餐系統，現代化的廚具設備，舒適優雅的用餐環境....等在在都以消費者的立場去思考經營，因此成為台灣極具規模與份量的餐飲店。",
                        "四草綠色隧道":"乘船費用>>\n\n紅樹林隧道：全票200元／半票100元\n四草台江之旅：全票200元／半票150元\n半票為國小一年級至六年級，國小六年級以上為全票\n\n這次的台南之旅，最讓人難忘的就是搭竹筏遊四草綠色隧道~\n除了可以飽覽綠色隧道的美麗景緻外，船上還有導覽人員沿途解說紅樹林的生態!\n當親眼看見這絕美的綠色隧道，不禁讓人讚嘆:實在太美了!!\n而且不用出國，就能看到四草綠色隧道的美景，實在不輸給國外~\n\n被譽為「台灣袖珍版亞馬遜河」的四草綠色隧道，位在台江國家公園內，大眾廟後方就有一片紅樹林\n\n台江國家公園，又稱為台江生態園區，是台灣第八座國家公園\n百餘年前，這裡曾是運送鹽、糖等民生物資的人工渠道，早期可從四草湖通往今日七股一帶，由於水道較淺，僅有竹筏能通過，所以此地又稱為「竹筏港」\n\n每艘船都有一位專業的導覽員，為大家解說紅樹林裡的生態與環境\n岸邊的濕地可以看到一些招潮蟹、彈塗魚\n導覽員介紹的四草其實就是指水筆仔、海茄苳、欖李、五梨跤\n",
                        "安平留飯店":"集「生活之水」為精神，「安平」為風景，「旅行」為養分\n\nHôtel de Ľeau 留飯店座落於安平河畔、台南市政府後方。\n融合古典與現代，簡單與繁複，展現出深層的藝術品味。\n堅持著「以人為本、都會菁英精緻美學」的設計精神，賦予Hôtel de Ľeau 安平‧留飯店一種永恆的生命力。\nHôtel de L’eau 留飯店如同一個沒有距離的溫暖歸鄉，冀望每個旅人經由我們舒適安穩地款待，在此都能尋回初心、忘卻煩惱、發現驚喜、享受感動。\n\n~~住房設施：~~\n1F大廳：\n迎賓櫃檯 / 餐廳 / 飲水機 / 接待訪客沙發區 / 書報雜誌\n\n~~旅客服務~~\n24小時前台服務、洗衣服務(快洗)、飛機班次查詢、行李搬運服務、行李/遺失諮詢/餐飲諮詢及訂位、城市旅遊諮詢服務、快遞/郵寄與包裹服務、喚醒服務、傳真/影印服務、嬰兒澡盆/嬰兒床(須預約)\n",
                        "府城食府":"品牌故事\n\n全臺唯一匯集台南在地百年飲食料理，在每道佳餚中慢食細品過去與現在\n\n  台南曾是全台政治、經濟重鎮所在，也是台灣文化最悠久的起源地，街頭巷尾流傳的「一府二鹿三艋舺」說法，及反映出臺灣繁華歷史由南往北發展的軌跡。因人口聚集與歲月的累積，孕育出許多府城獨有的民俗文化與特色，其中最為眾所皆知的便是府城料理；從早期因農民而有的在地小吃、因商業繁榮而生的酒家菜及家常菜等，每一道料理都蘊含了台南府城獨有的人文風情及色彩。\n\n為了能夠讓到訪府城的人們更了解飲食文化，【府城食府】特別匯集府城道地的美食及文化特色，各種古色古香的陳設，搭配傳統藝文作品，一次滿足您的味蕾與視覺，讓您徹底沉浸在府城的文化氣息中。\n",
                        "水鳥和洋創作料理":"水鳥和洋創菜本店位在嘉義，2015年5月時開了台南店，位在東安路上，黑色帶時尚感的外觀，經過時很難不注意到。「水鳥和洋創菜」，光是看到店名就令人有無限的想像空間，水鳥因季節的變化遷徙，無國度的限制。店老闆希望他的創菜料理藝術，也能像水鳥一樣無國度的限制。\n\n水鳥餐廳的廚藝團隊也得過不少獎，總監陳冠宇及團隊在「2015日本國際料理人大賽」，勇奪團體組及個人賽金牌。餐廳也入選「舌尖上的台灣 亞洲最佳101家餐廳」\n",
                        "安平樹屋":"樹屋位於德記洋行後面，原是德記洋行的倉庫，大約建於十九世紀末及日治初期，此處曾做為「大日本鹽業株式會社」出張所倉庫，現況規模即為日本人增建。\n\n經百餘年歲月滄桑後，倉庫牆面滿佈榕樹盤據的氣根，高聳的榕樹茂密的樹冠彷彿成為倉庫的屋頂，也讓安平樹屋擁有難得一見的外觀及神秘氣息，形成特有的屋樹共生奇景，類似吳哥窟大樹盤纏著「塔普倫寺」。\n\n現今內有規劃完善的木棧道讓人穿梭於樹屋之間，也可往上穿梭在樹冠之中，常可見許多的松鼠與鳥類在樹冠間嬉戲，生態良好。走累了就近到樹屋園區內的樹屋咖啡休息，來支冰淇淋消暑，繼續探索安平的優美。​\n",
                        "台南知事官邸":"~~關於原臺南縣知事官邸~~\n原臺南縣知事官邸，建於1900年(明治33年)，現為台南市定古蹟，台南人暱稱為「時鐘樓」，一說為舊有屋頂凸出山牆圖騰狀似時鐘而得名，該建築除作為地方知事的官邸外，另一個重要的用途是作為日本皇族外出時的「御泊所」，在台灣歷史上該建築是南台灣唯一設計作為供皇族居住的行館，至1941年為止，有近二十位日本皇族曾到訪停留於此地，比作為總督官邸的台北賓館數量還來得多，足見該建築在台灣日治時期歷史中重要的角色，尤其是1923年當時的裕仁太子(後為昭和天皇)來台參訪於曾下塌於此，當年裕仁太子在台住宿地點現僅存臺北賓館及臺南縣知事官邸兩處，其他都已拆除。\n\n\n~~官邸是誰住？~~\n原臺南縣知事官邸除了提供日本皇族來台旅行時住宿的「御泊所」外，平時是作為縣知事長官的官邸，隨著日治時期行政區的改變，房子的主人也有所變動，因此從主人的變動可以看見當時台灣地方行政區的演變，從台南縣到台南廳，最後改為台南州。\n"
                        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        introduceTableView.dataSource = self
        introduceTableView.delegate = self
        spotImage.image = UIImage(named: spot.spotImage)
        introduceTableView.estimatedRowHeight = 500.0
        introduceTableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "introCell")
        cell?.textLabel?.numberOfLines = 0
        switch spot.spotName {
        case "奇美博物館":
            cell?.textLabel?.text = introduction["奇美博物館"]
        case "周氏蝦捲":
            cell?.textLabel?.text = introduction["周氏蝦捲"]
        case "四草綠色隧道":
            cell?.textLabel?.text = introduction["四草綠色隧道"]
        case "安平留飯店":
            cell?.textLabel?.text = introduction["安平留飯店"]
        case "府城食府":
            cell?.textLabel?.text = introduction["府城食府"]
        case "水鳥和洋創作料理":
            cell?.textLabel?.text = introduction["水鳥和洋創作料理"]
        case "安平樹屋":
            cell?.textLabel?.text = introduction["安平樹屋"]
        case "台南知事官邸":
            cell?.textLabel?.text = introduction["台南知事官邸"]
        default:
            break
        }
        return cell!
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
