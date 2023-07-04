//
//  idolData.swift
//  0704structPractice
//
//  Created by 남현정 on 2023/07/04.
//

import Foundation

let companies: [Company] = [SMEnt, JYPEnt, HYBEEnt, StarshipEnt, CubeEnt, BpmEnt]

//sm, jyp, hive, starship, cube, bpm
let SMEnt: Company = Company(name: "sm", groupSingers: [EXO, RedVelvet, NCTDream], soloSingers: [Boa, Kyuhyeon, Taeyeon], ceo: "장철혁", marketCap: 269300000, imageURLString: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/SM_Entertainment_Logo.svg/512px-SM_Entertainment_Logo.svg.png")

let JYPEnt: Company = Company(name: "jyp", groupSingers: [TwoPM, StrayKids, itzy]
, soloSingers: [JYP], ceo: "정욱", marketCap: 4337800000, imageURLString: "https://i.namu.wiki/i/pjXvIORtho61eBkeJdmedz4_dShxkShaWiIet-Hg3yOh0tQ3r8C_fdOdYjvZUxKNR7V0b3tcjpGPYwwgfTG3p0_qysxqqjIMLY9Tf8eNrWxEE45o50eZdixI2qrQtyqN3-bUl1mhTwwEXbTrpptHaQ.svg")

let HYBEEnt: Company = Company(name: "HYBE", groupSingers: [BTS, TXT, NewJeans], soloSingers: [Zico, Nana], ceo: "박지원", marketCap: 11950000000000, imageURLString: "https://img.khan.co.kr/news/2021/03/19/l_2021031901002293200196381.webp")

let StarshipEnt: Company = Company(name: "startship", groupSingers: [Ive, WJSN, MonstaX], soloSingers: [Kwill], ceo: "이진성", marketCap: 0, imageURLString: "https://i.namu.wiki/i/a_Qudeh7Meby5oZ7QCgQuNOsqRCapySFlsj236Li8_WJ9oDFOO7CPCi0va_OaXzTWlsTimvF1S35R03QSIZgxe-gNgarGs7-eHrMubYL5V3Wus3UxBgANIrs-aoDU_L70W_vTZ2KnezYeyLTdUB7Bg.svg")

let CubeEnt: Company = Company(name: "cube", groupSingers: [BtoB, Gidle], soloSingers: [Kwoneunbin, Jokwon], ceo: "강승곤", marketCap: 3465000000000, imageURLString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGGt7LE9e5Z2mmH0kmZXu7otJSNS0rL-QADT83m54nqW258rRmUXYIkClevBXhC4Dp6g&usqp=CAU")

let BpmEnt: Company = Company(name: "bpm", groupSingers: [VIVIZ], soloSingers: [Hasungwoon, Len], ceo: "박장근", marketCap: 6514000000, imageURLString: "https://i.namu.wiki/i/4J5xC_CLMjYbQxPCoo7jDetCTnkGJZsgA7nYdcBI1yVQSLK3LMmF-dxcH16JWqqcLDP5YhqUFhJCDMnuTJPjKv8MvLObFrSd5Nn0P1ZSeoe9wHfZmJFPqLNxmCR_K8EBdHwYP_7oYTs9WR9AlPsMxA.svg")

/*
SM
[“EXO”, “RedVelvet”, ”NCT”]
["보아", "규현", "태연"]
 
 JYP
[“2PM”,”StrayKids”, ”itzy”]
 솔로 : ["박진영"]

Hive
[“BTS”,”TXT”“NewJeans”]
[지코]
 
스타쉽
 ["아이브", "우주소녀", "몬스타엑스"]
 [케이윌]
 
 큐브
 그룹 :  비투비, 여자아이들
 솔로: 권은빈, 조권
 
 BPM
 그룹 : ["VIVIZ"]
 솔로 : ["하성운", "렌"]
*/

let EXO: GroupIdol = GroupIdol(memerNum: 9, members: ["시우민", "수호", "레이", "백현", "첸", "찬열", "디오", "카이", "세훈"], name: "EXO", debut: "2012.04.08", imageURLString: "https://i.namu.wiki/i/af1RYYNRgkMGMla25AW5-otKey_fS9M79bIaASYldyXOHkdp4UqOdkXYBHnVlTTiVmxlOA2i_pYSsj_YNMAQQtzaUfpezdRFPqS2LtfFcXnPqisVx3h443Fb1v6iTREOIhy-xBCI1UnUF5cHgkgjrw.webp")

let RedVelvet: GroupIdol = GroupIdol(memerNum: 5, members: ["아이린", "슬기", "웬디", "조이", "예리"], name: "RedVelvet", debut: "2014.08.", imageURLString: "https://i.namu.wiki/i/6PJCgHOdgZYHRFixAUIth7BPQRk688MNB2gUEw6RmM-XEy4zZ35XUc9berrQOlGE63DuRHjSEiSknViH9NprpN4ZbSZ--wTk-MivN7s1FPT6Q9wmX7scfbgPaCW1RM082qTN8xQjkKM5VexezTeKiA.webp")

let NCTDream: GroupIdol = GroupIdol(memerNum: 7, members: ["마크", "런쥔", "제노", "해찬", "재민", "천러", "지성"], name: "NCTDream", debut: "2016.08.25", imageURLString: "https://i.namu.wiki/i/G7bFif2MYSAxBZnbI4olFM-1CJhSTCStHE03jnVkBvFB0g29uuJIgD0rXW7r-Bpk_FkCxADUKtsjZUp8zmTD1KQANCIqR3cpSGyooRkny6xqqz_69oVnRIs8ZSO0VW-eLw5Lg5R7cuMi9tMEEjqX7g.webp")

let Boa: SoloIdol = SoloIdol(name: "Boa", debut: "2000.08.25", imageURLString: "https://i.namu.wiki/i/uhMhV7NhCpj2G2JE12P7ju4sjaP-hd2EZYVkxLdDr88JVupLhluIkSLXbX0zJyifm7PY2FEFjWfB1yT0_388UoEnNF3e5vlf_JLj9H28ruQIJ-u-A6ifzHhcVO3E_puclFXPqQGbYR53BUP4rUOQDg.webp", gender: "F", Team: nil)

let Kyuhyeon: SoloIdol = SoloIdol(name: "규현", debut: "2014.11.13", imageURLString: "https://i.namu.wiki/i/S-HeIVWYSbV8DsIAlzRvzNcjMV1_8GMi8kdoJiDe6OscoyexsnPxd7UoFHgwXP7KpS3QA_zftGTN9M7X2bJqzFQVpGJMaTsiqf3qXEkuE52sJV4C17vg3OaSJhHvkLANj7wEi4yUKrJECw8Vhh5pQA.webp", gender: "M", Team: "슈퍼주니어")

let Taeyeon: SoloIdol = SoloIdol(name: "태연", debut: "2015.10.07", imageURLString: "https://i.namu.wiki/i/mUiPpuynvcJQmiLDpQgaGy_XdtcYWKHc04dYMztJsHFPobkzFxThOqOV1OYBU137zVQiq8VPYlW0WXeReWNja9fNBEBzSfzVkmwpFPorYcvp3ZxFirDaE_Zwh7G9EyJwqrCjsAeQ7eH1JM-GMU_jug.webp", gender: "F", Team: "소녀시대")


//JYP
/*
 
 JYP
[“2PM”,”StrayKids”, ”itzy”]
 솔로 : ["박진영"]
 */
let TwoPM: GroupIdol = GroupIdol(memerNum: 5, members: ["택연", "우영", "준호", "닉쿤", "찬성"], name: "2pm", debut: "2008.9.4", imageURLString: "https://i.namu.wiki/i/aPewnvNbTFk2GmMA76O7EhcUHHRYlFA15Vj53y1go1OHAF4w5M10Z9eelQRzqisPDuVEOPM7NQnf3h_VVrWYKwBgJ2aMW41lQWX1-FXLnFbHCvdcC2gd5Rala14yYZ5eUGlnOdchgiu32pDhi3996g.webp")

let StrayKids: GroupIdol = GroupIdol(memerNum: 8, members: ["방찬", "리노", "창빈", "현진", "한", "필릭스", "승민", "아이엔"], name: "StrayKids", debut: "", imageURLString: "https://i.namu.wiki/i/C1Yhiu2_xSscuLrRh3EwZZUoHHXkzx6PaOFUY7DH2u9QkLGAgdFIJIN9ywoE91tgfPayVkFsLTXi8NIKXPlzSx4HdxY5lyyoL1c4IY_Ag6obHZkR6BbC7_QTZZMjlDHb2BcWGZLtWgRiYU-36b4NXg.webp")

let itzy: GroupIdol = GroupIdol(memerNum: 5, members: ["예지", "리아", "류진", "채령", "유나"], name: "itzy", debut: "2019.2.12", imageURLString: "https://i.namu.wiki/i/Pxs444cYwo3ZFheL844eI2V22NT5P-GHuzpTUpSofa5l7dqO6ZRSigsNgHb7Pw2OZckcesNRNhAw_n9jsWBQPYwmU8apEEYKoFMMzbJ17xfxjNBnz-2sb1XV4tjZj41mzlnKmVVBi8qmsM8H_wSeJg.webp")

let JYP: SoloIdol = SoloIdol(name: "박진영", debut: "1994.9.1", imageURLString: "https://mblogthumb-phinf.pstatic.net/MjAyMDA0MDRfMTU2/MDAxNTg1OTY5MzQ3MjUz.vlcj6IKrQRV_oOJ8j35vGkBu6byWWxz2lrhl9TAZU1og.GmaQ9JfHojilK0FybxQflYERZQvjTsF-AYUOZDAIBHwg.PNG.gyeki/SE-bfc58a2b-a065-4aeb-a703-3626018c7edd.png?type=w800", gender: "M", Team: nil)

/*
 Hive
 [“BTS”,”TXT”“NewJeans”]
 [지코, 나나]
 
 */
let BTS: GroupIdol = GroupIdol(memerNum: 7, members: ["진" , "슈가" , "제이홉", "RM" , "지민"  ,"뷔", " 정국"], name: "BTS", debut: "2013.06.13", imageURLString: "https://i.namu.wiki/i/ksTmuozyjBbSlAVIPDO1LFhZy9UfR61ukR4su68Gf1fuIwqMgwZweFnP8GB2x1quEq55hT_sUHl-pJUwIoON15v500ErXPIlGoZqi49liUCsPTUMnGD2Y5gBkWf3kf87L9aPfHIAmI4t67Qm99cfiQ.webp")

let TXT: GroupIdol = GroupIdol(memerNum: 5, members: ["연준", "수빈", " 범규",  "태현" , "휴닝카이"], name: "TXT", debut: "2019.03.04", imageURLString: "https://i.namu.wiki/i/ID5hh2pwXz1dkKgefevf2xsJ_KLxm8bPE7mRGUKMAp3dblu2dqcfjbvdlAqCB2pT4JlYHWndmroZqN8UW3cBDKitN0l0ACDERi1QFc4epFu25UNZPyiLXvPdqtnq2wF_5_sJsOLTkgFkh9LLmqAiXQ.webp")

let NewJeans: GroupIdol = GroupIdol(memerNum: 5, members: ["민지", "하니", "다니엘" ,"해린","혜인"], name: "NewJeans", debut: "2022.07.22", imageURLString: "https://i.namu.wiki/i/wAGjMG3eJ7ZhJky1JMzlxK8pXxro8OVxNbFpDcmILmAlYRMaXwXT42JCW1u6XxmrdCcuf8xWhNT8gDII65bSNNqIPn427HfufcR2v_kaOGvDdeHL93FzKfteftb-cBh861pt3mBggz0wkMQ0bZmq-Q.webp")

let Zico: SoloIdol = SoloIdol(name: "Zico", debut: "2011.04.15", imageURLString: "https://i.namu.wiki/i/QtRmZjRbrd5T4RBxpIcZ5JWZm5CxPlMnbcZyfEmRAYFlIvPGThyScyu2BB_AmL2cjvQGurN1R_o11D4PeSpoFeOWT_zgVprGw7wo2yXIL5lSUmb_PsXyCt8tF5vjuAhe5g4bgWUKzOMQ6shnjqQR7Q.webp", gender: "M", Team: "블락비")

let Nana: SoloIdol = SoloIdol(name: "나나", debut: "2009.11.25", imageURLString: "https://i.namu.wiki/i/DSUVAIYWLHw_R2c9jvD3N1wK60AQxqmLDwwf6u-MKAEbuIB9EEdZ66o2h6YbYLy740b_zdbqpe2zagP5IxXketh-kgcJ_mAmH2vaIb7mIBH-KC4i0iDc3QZEOnPDF5HSwpqqHF8G9hzSlv7OEugtcQ.webp", gender: "F", Team: "애프터스쿨")

/*
 스타쉽
  ["아이브", "우주소녀", "몬스타엑스"]
  [케이윌]
 */
let Ive: GroupIdol = GroupIdol(memerNum: 6, members: ["안유진", "가을", "레이", "장원영", "리즈", "이서"], name: "Ive", debut: "2021.12.01", imageURLString: "https://i.namu.wiki/i/7ddMUDY1CCH-rXl1cOWNpAGzXxk8fNxxC6ryKRuyY-VzlkKTY8-jbArwQFOJleFH4s7kGzXqC8lgkf_eze3zltt0hvVMzoZT0CloBoB6rm3XvI1fT60sTqSOv9asmBur9dqlxCdqxFUdJ7DoGxHoDg.webp")

let WJSN: GroupIdol = GroupIdol(memerNum: 10, members: ["엑시","설아","보나","수빈","은서","여름","다영","연정","루다","다원"], name: "WJSN", debut: "2016.02.25", imageURLString: "https://i.namu.wiki/i/Rlg8IgueGjSFdTlCqPU-DTVlOmYZiaSc9ZtnKxmdUuKXUjGiICs4MqMK4xE8f0NlnewyWjBYfNvLckvGoE6JcyfnrKYlvQAj6ZvyXX5oI3vRHBuO9LlaWmY9n2Ey-wnbc7mg_qSwX3hz_ugcHqZQCg.webp")

let MonstaX: GroupIdol = GroupIdol(memerNum: 6, members: ["셔누", "민혁", "기현","형원", "주헌", "아이엠"], name: "MonstaX", debut: "2015.05.14", imageURLString: "https://i.namu.wiki/i/j-fVW2dfNVYfSCZtQZfrVf7kIMMHt1tZQ5hvkgeXLwRAj_Oyed4xXuCdZE_CFawE5b9PR0-BAKIPQfZ01puA_pXks0cwlzDemO2dtTweJlFjTIz9FEuUEzBQyGBjttpk2202q3vPkevJ7EEDlUqNqA.webp")

let Kwill: SoloIdol = SoloIdol(name: "Kwill", debut: "2007.03.06", imageURLString: "https://i.namu.wiki/i/O-Ykwtpo9iPAYb25xNgkfuaWV0666JneltUQfqs7ciuouPfDruxu477AUQqK2sou2a23ncvKUDOQi5A8TH8uygBYIHRFmvkn4HeRoxxulncO2z3iizYPXVSdFzNSbG6Ygvlgy5IRM26mHzRNabzPwQ.webp", gender: "M", Team: nil)


/*
큐브
그룹 :  비투비, 여자아이들
솔로: 권은빈, 조권

BPM
그룹 : ["VIVIZ"]
솔로 : ["하성운", "렌"]
*/
let BtoB: GroupIdol = GroupIdol(memerNum: 6, members: ["서은광", "이민혁",  "이창섭"  ,"임현식"  ,"프니엘",  "육성재"], name: "BtoB", debut: "2012.03.21", imageURLString: "https://i.namu.wiki/i/XagnXmvMUVaiyiQ9RFvNF31zzaC7_xf2I85ft-8VVaiX-tF0V1ladT-NO3KlsVS27hgpt2tzjV4MXuGIVuzKVTyMEKZ9h2_uT48q7FDO8jp3oeqeVKguXZjYhCb0e8-ZsB6sdOVkpv_ocotr7hJffA.webp")

let Gidle: GroupIdol = GroupIdol(memerNum: 6, members: ["미연", "민니", "소연", "우기", "슈화"], name: "Gidle", debut: "2018.05.02", imageURLString: "https://i.namu.wiki/i/n8Sl--uGQEUApeLYEYlJ-6ffNy-hYbgxqj-VlMPuEJkfzBD-o8cQKudkvDRqwI0RqHJQerTyFya_82GvU9uXWNQHTwvg-on8QTQ7mXi2JEcl-yebTL0_BLghTa20aQYdGtkZf8UK0z6NiDRojDMsFA.webp")

let Kwoneunbin: SoloIdol = SoloIdol(name: "Kwoneunbin", debut: "2016.02.29", imageURLString: "https://i.namu.wiki/i/AbxMbj0jmbDVAOs23zEL5CFer9JjzUumlvylcdVI9fWG0jRh6eF1oa6WD8j7nrPBGpln2MxnIOOF6Qv1Oa78YicxTFsNHhhf-REJeZmsG4r4mSGS0IPpCQwKa_cjW4wosM4j6edG-S39ocUgq3m-Mw.webp", gender: "F", Team: "CLC")

let Jokwon: SoloIdol = SoloIdol(name: "joKwon", debut: "2008.07.11", imageURLString: "https://i.namu.wiki/i/0q_c79FxKCd5NgoMW6EcRO_scvQoI31a4d31zQtC_bCH-sXoc_RyYprKxOo4-kvxivNEHk2aYEGM02WOtEqQCorurXs-ZMSbO5nK9-5gtyVgJx63kFo79Tyl6iu90Tmkleo3n_xu3Wxv3cHLIrKkbA.webp", gender: "M", Team: "2AM")


////
let VIVIZ: GroupIdol = GroupIdol(memerNum: 3, members: ["엄지","신비","은하"], name: "VIVIZ", debut: "2022.02.09", imageURLString: "https://i.namu.wiki/i/tGyDcT04wWj6MrTktPS0WubbqbE7FeMxVnTtGqrFM4aSvhrEOpueJ_W5gG0AAbeYel4ePVJaewxmGbPEtEiZIH1hfybqRReQ1uqffOdi-5Idwbi9APZtcLOHuyNE3zJT9AWE9-KTt93KgIPMs7tdKQ.webp")

let Hasungwoon: SoloIdol = SoloIdol(name: "Hasungwoon", debut: "2019.02.28", imageURLString: "https://i.namu.wiki/i/7ryCRjm5KdyziV0Q_itxGb2Y2OE1jmnyEsF2NGTx3kultetA10NRlyzNfE6p0vtEJAkJSZdWwkEqWaamzvPygEE9VgLstBdViEiDTfJ6xfy5I4-YpCZfHTd5cUfHnYgF3eN_eAiPFYaV7DP5ElSI1A.webp", gender: "M", Team: nil)

let Len: SoloIdol = SoloIdol(name: "Len", debut: "2023.06.13", imageURLString: "https://i.namu.wiki/i/yQazjRcPOBsKANaHwUj0Np6m0wsS15LEcXnjSKF7R0RSq2y52duyu9U2fYyl8k3vVMyAnJacMHbPr6gUS1qYSjww1rhTCN8FBh773TABNM_gEACZL3RK388oFpXFiU5raVWncJEeSpqTkb2RvCe_XA.webp", gender: "M", Team: "Nuest")
