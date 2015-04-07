# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create!(name: '无权限')
Role.create!(name: '社区／俱乐部')
Role.create!(name: '配送单位')

User.create!(name: 'sccsa-admin', password: '11111111', unit: '上海社区体育协会', is_admin: true, role_id: '3')
User.create!(name: 'test1', password: '11111111',unit: '上海社区体育协会', is_admin: true, role_id: '2')
User.create!(name: 'test2', password: '11111111',unit: '上海社区体育协会', is_admin: true, role_id: '3')

Category.create!(name: '科普健身讲座')
Category.create!(name: '健身技能培训')
Category.create!(name: '青少年体育基础培训')
Category.create!(name: '科学健身宣传品')
Category.create!(name: '赛事及特色活动组织')

Project.create(category_id: 1,name:'健身苑器材使用方法',serial:'A001-TY')
Project.create(category_id: 1,name:'日常健身项目的指导与练习方法',serial:'A002-TY')
Project.create(category_id: 1,name:'健身舞（操）的创编',serial:'A003-TY')
Project.create(category_id: 1,name:'上海健康城市建设与市民健身',serial:'A004-TY')
Project.create(category_id: 1,name:'社区科学健身方法',serial:'A005-TY')
Project.create(category_id: 1,name:'科学健身方法',serial:'A006-TY')
Project.create(category_id: 1,name:'运动中的现场急救',serial:'A007-TY')
Project.create(category_id: 1,name:'体质测量与评价',serial:'A008-TY')
Project.create(category_id: 1,name:'跑步健身的科学',serial:'A009-TY')
Project.create(category_id: 1,name:'如何预防体育健身运动后的肌肉酸痛',serial:'A010-TY')
Project.create(category_id: 1,name:'体育健身锻炼方法',serial:'A011-TY')
Project.create(category_id: 1,name:'广场舞的健身作用',serial:'A012-TY')
Project.create(category_id: 1,name:'中老年人健身锻炼方法',serial:'A013-TY')
Project.create(category_id: 1,name:'体力提升的运动科学',serial:'A014-TY')
Project.create(category_id: 1,name:'女性养生与塑身',serial:'A015-TY')
Project.create(category_id: 1,name:'中老年健身运动处方',serial:'A016-TY')
Project.create(category_id: 1,name:'海派体育与全民健身',serial:'A017-TY')
Project.create(category_id: 1,name:'科学健身观与市民身心健康',serial:'A018-TY')
Project.create(category_id: 1,name:'体育锻炼对青少年身心健康的促进作用',serial:'A019-TY')
Project.create(category_id: 1,name:'拳操、太极、武术等知识与方法',serial:'A020-TY')
Project.create(category_id: 1,name:'健身锻炼的理念、养生学等',serial:'A021-TY')
Project.create(category_id: 1,name:'运动安全知识ABC',serial:'A022-TY')
Project.create(category_id: 1,name:'健美操与健康管理',serial:'A023-TY')
Project.create(category_id: 1,name:'武术运动与全民健身',serial:'A024-TY')
Project.create(category_id: 1,name:'国际大众体育发展',serial:'A025-TY')
Project.create(category_id: 1,name:'奥林匹克研究，体育控制论',serial:'A026-TY')
Project.create(category_id: 1,name:'体质与健康',serial:'A027-TY')
Project.create(category_id: 1,name:'运动处方及健康促进等研究',serial:'A028-TY')
Project.create(category_id: 1,name:'健身苑器材知识',serial:'A029-TY')
Project.create(category_id: 1,name:'常见病的运动干预',serial:'A030-TY')
Project.create(category_id: 1,name:'体育健身运动对健康的促进作用',serial:'A031-TY')
Project.create(category_id: 1,name:'肥胖症与运动减肥',serial:'A032-TY')
Project.create(category_id: 1,name:'脂肪肝患者的体育健身运动',serial:'A033-TY')
Project.create(category_id: 1,name:'高血压病人的体育健身运动',serial:'A034-TY')
Project.create(category_id: 1,name:'冠心病患者的体育健身运动',serial:'A035-TY')
Project.create(category_id: 1,name:'不同人群的健身锻炼',serial:'A036-TY')
Project.create(category_id: 1,name:'高脂血症患者的体育健身运动',serial:'A037-TY')
Project.create(category_id: 1,name:'老年人如何选择健身运动项目',serial:'A038-TY')
Project.create(category_id: 1,name:'不同季节的体育健身运动注意事项',serial:'A039-TY')
Project.create(category_id: 1,name:'体育健身运动对心理状态的调节作用',serial:'A040-TY')
Project.create(category_id: 1,name:'健身锻炼',serial:'A041-TY')
Project.create(category_id: 1,name:'合理膳食安排',serial:'A042-TY')
Project.create(category_id: 1,name:'运动营养',serial:'A043-TY')
Project.create(category_id: 1,name:'运动与预防疾病之关系',serial:'A044-TY')
Project.create(category_id: 1,name:'如何正确对待营养品  ',serial:'A045-TY')
Project.create(category_id: 1,name:'如何看懂体检单和化验单',serial:'A046-TY')
Project.create(category_id: 1,name:'老慢支和哮喘患者的体育健身运动',serial:'A047-TY')
Project.create(category_id: 1,name:'常见慢性疾病患者的体育锻炼及体育医疗',serial:'A048-TY')
Project.create(category_id: 1,name:'运动创伤与防治',serial:'A049-TY')
Project.create(category_id: 1,name:'体育运动与健身',serial:'A050-TY')
Project.create(category_id: 1,name:'传统体育养生与健康',serial:'A051-TY')
Project.create(category_id: 1,name:'中老年养生与健康促进',serial:'A052-TY')
Project.create(category_id: 1,name:'环境对健康的影响及如何选择健身环境',serial:'A053-TY')
Project.create(category_id: 1,name:'不同人群（青少年、亲子、妇女）体育健身知识',serial:'A054-TY')
Project.create(category_id: 1,name:'社区市民科学健身方法与要点',serial:'A055-TY')
Project.create(category_id: 1,name:'健身运动中注意心血管病的预防与保护',serial:'A056-TY')
Project.create(category_id: 1,name:'太极拳运动与养生',serial:'A057-TY')
Project.create(category_id: 1,name:'伤病康复训练及预防',serial:'A058-TY')
Project.create(category_id: 1,name:'上海社会体育发展与全民健身服务保障体系',serial:'A059-TY')
Project.create(category_id: 1,name:'体育社会学、健身团队发展、体育场域等',serial:'A060-TY')
Project.create(category_id: 1,name:'社区健身队伍组织与管理',serial:'A061-TY')
Project.create(category_id: 1,name:'上海市职工体育发展',serial:'A062-TY')
Project.create(category_id: 1,name:'社会体育、社会体育指导员有关常识',serial:'A063-TY')
Project.create(category_id: 1,name:'健身组织与管理',serial:'A064-TY')
Project.create(category_id: 1,name:'管理组织行为、体育经济',serial:'A065-TY')
Project.create(category_id: 1,name:'健身团队管理、人力资源管理、体育管理',serial:'A066-TY')
Project.create(category_id: 1,name:'学校体育、社会体育、老年人体育等',serial:'A067-TY')
Project.create(category_id: 1,name:'体育经济与体育产业专题研究',serial:'A068-TY')
Project.create(category_id: 1,name:'运动器材管理与维修',serial:'A069-TY')
Project.create(category_id: 1,name:'体育赛事运作',serial:'A070-TY')
Project.create(category_id: 1,name:'外来农民工体育参与路径及其管理的创新',serial:'A071-TY')
Project.create(category_id: 1,name:'社区体育休闲娱乐活动策划与组织',serial:'A072-TY')
Project.create(category_id: 1,name:'社会体育活动策划与组织',serial:'A073-TY')
Project.create(category_id: 1,name:'社会体育指导员相关理论知识',serial:'A074-TY')
Project.create(category_id: 1,name:'休闲体育概述',serial:'A075-TY')
Project.create(category_id: 1,name:'科学的健身及花样跳绳运动赏析',serial:'A076-TY')
Project.create(category_id: 1,name:'科学的健身及花样跳绳高端赛事解析',serial:'A077-TY')
Project.create(category_id: 1,name:'科学的健身及中国跳绳发展史',serial:'A078-TY')
Project.create(category_id: 1,name:'科学的健身及花样跳绳普及赛事解析',serial:'A079-TY')
Project.create(category_id: 1,name:'科学的健身及跳绳规则普及知识',serial:'A080-TY')
Project.create(category_id: 2,name:'太极拳——6式',serial:'B001-TY')
Project.create(category_id: 2,name:'太极拳——8式',serial:'B002-TY')
Project.create(category_id: 2,name:'太极拳——24式',serial:'B003-TY')
Project.create(category_id: 2,name:'太极拳——42式',serial:'B004-TY')
Project.create(category_id: 2,name:'简易养身太极拳（站姿、坐姿、活步组合）',serial:'B005-TY')
Project.create(category_id: 2,name:'孙式太极拳',serial:'B006-TY')
Project.create(category_id: 2,name:'陈式太极拳',serial:'B007-TY')
Project.create(category_id: 2,name:'吴式太极拳',serial:'B008-TY')
Project.create(category_id: 2,name:'武式太极拳',serial:'B009-TY')
Project.create(category_id: 2,name:'杨氏太极拳',serial:'B010-TY')
Project.create(category_id: 2,name:'杨式太极拳推手系列',serial:'B011-TY')
Project.create(category_id: 2,name:'松鹤太极拳（集陈、杨、武、吴、孙太极特色）',serial:'B012-TY')
Project.create(category_id: 2,name:'太极剑',serial:'B013-TY')
Project.create(category_id: 2,name:'太极扇',serial:'B014-TY')
Project.create(category_id: 2,name:'太极书法',serial:'B015-TY')
Project.create(category_id: 2,name:'太极功夫扇',serial:'B016-TY')
Project.create(category_id: 2,name:'木兰拳',serial:'B017-TY')
Project.create(category_id: 2,name:'木兰扇',serial:'B018-TY')
Project.create(category_id: 2,name:'木兰剑',serial:'B019-TY')
Project.create(category_id: 2,name:'南拳',serial:'B020-TY')
Project.create(category_id: 2,name:'终南山形意拳',serial:'B021-TY')
Project.create(category_id: 2,name:'罗汉拳长拳慢打',serial:'B022-TY')
Project.create(category_id: 2,name:'伸筋拔骨健身功法',serial:'B023-TY')
Project.create(category_id: 2,name:'练功十八法',serial:'B024-TY')
Project.create(category_id: 2,name:'养生功法',serial:'B025-TY')
Project.create(category_id: 2,name:'少儿武术（少林拳和太极剑）',serial:'B026-TY')
Project.create(category_id: 2,name:'彩巾操',serial:'B027-TY')
Project.create(category_id: 2,name:'短棍操',serial:'B028-TY')
Project.create(category_id: 2,name:'健美操',serial:'B029-TY')
Project.create(category_id: 2,name:'橡筋操',serial:'B030-TY')
Project.create(category_id: 2,name:'广场舞',serial:'B031-TY')
Project.create(category_id: 2,name:'排舞',serial:'B032-TY')
Project.create(category_id: 2,name:'秧歌',serial:'B033-TY')
Project.create(category_id: 2,name:'腰鼓',serial:'B034-TY')
Project.create(category_id: 2,name:'民族健身舞',serial:'B035-TY')
Project.create(category_id: 2,name:'健身舞蹈',serial:'B036-TY')
Project.create(category_id: 2,name:'休闲舞蹈',serial:'B037-TY')
Project.create(category_id: 2,name:'体育舞蹈：华尔兹',serial:'B038-TY')
Project.create(category_id: 2,name:'体育舞蹈：拉丁舞',serial:'B039-TY')
Project.create(category_id: 2,name:'体育舞蹈：摩登舞',serial:'B040-TY')
Project.create(category_id: 2,name:'体育舞蹈：爵士舞',serial:'B041-TY')
Project.create(category_id: 2,name:'足球',serial:'B042-TY')
Project.create(category_id: 2,name:'花式足球',serial:'B043-TY')
Project.create(category_id: 2,name:'篮球',serial:'B044-TY')
Project.create(category_id: 2,name:'中小学排球',serial:'B045-TY')
Project.create(category_id: 2,name:'乒乓球',serial:'B046-TY')
Project.create(category_id: 2,name:'羽毛球',serial:'B047-TY')
Project.create(category_id: 2,name:'网球',serial:'B048-TY')
Project.create(category_id: 2,name:'气排球',serial:'B049-TY')
Project.create(category_id: 2,name:'高尔夫',serial:'B050-TY')
Project.create(category_id: 2,name:'毽球',serial:'B051-TY')
Project.create(category_id: 2,name:'风筝',serial:'B052-TY')
Project.create(category_id: 2,name:'空竹',serial:'B053-TY')
Project.create(category_id: 2,name:'手拍鼓',serial:'B054-TY')
Project.create(category_id: 2,name:'跳竹',serial:'B055-TY')
Project.create(category_id: 2,name:'剑道',serial:'B056-TY')
Project.create(category_id: 2,name:'空手道',serial:'B057-TY')
Project.create(category_id: 2,name:'柔道',serial:'B058-TY')
Project.create(category_id: 2,name:'摔跤',serial:'B059-TY')
Project.create(category_id: 2,name:'拳击',serial:'B060-TY')
Project.create(category_id: 2,name:'跆拳道',serial:'B061-TY')
Project.create(category_id: 2,name:'瑜伽',serial:'B062-TY')
Project.create(category_id: 2,name:'飞镖运动',serial:'B063-TY')
Project.create(category_id: 2,name:'花样跳绳',serial:'B064-TY')
Project.create(category_id: 2,name:'健步走与慢跑',serial:'B065-TY')
Project.create(category_id: 2,name:'健身器材使用',serial:'B066-TY')
Project.create(category_id: 2,name:'健身小游戏',serial:'B067-TY')
Project.create(category_id: 2,name:'健身指导',serial:'B068-TY')
Project.create(category_id: 2,name:'塑身健体训练',serial:'B069-TY')
Project.create(category_id: 2,name:'体适能训练（提高个人身体活动的适应能力）',serial:'B070-TY')
Project.create(category_id: 2,name:'田径训练',serial:'B071-TY')
Project.create(category_id: 2,name:'损伤预防与康复',serial:'B072-TY')
Project.create(category_id: 3,name:'足球',serial:'B001-DF')
Project.create(category_id: 3,name:'篮球',serial:'B002-DF')
Project.create(category_id: 3,name:'排球',serial:'B003-DF')
Project.create(category_id: 3,name:'乒乓球',serial:'B004-DF')
Project.create(category_id: 3,name:'羽毛球',serial:'B005-DF')
Project.create(category_id: 3,name:'形体健美',serial:'B006-DF')
Project.create(category_id: 3,name:'健美操',serial:'B007-DF')
Project.create(category_id: 3,name:'太极拳',serial:'B008-DF')
Project.create(category_id: 3,name:'游泳',serial:'B009-DF')
Project.create(category_id: 3,name:'网球',serial:'B010-DF')
Project.create(category_id: 3,name:'击剑',serial:'B011-DF')
Project.create(category_id: 3,name:'荷球',serial:'B012-DF')
Project.create(category_id: 3,name:'高尔夫',serial:'B013-DF')
Project.create(category_id: 3,name:'瑜伽',serial:'B014-DF')
Project.create(category_id: 3,name:'跆拳道',serial:'B015-DF')
Project.create(category_id: 3,name:'跑步',serial:'B016-DF')
Project.create(category_id: 3,name:'攀岩',serial:'B017-DF')
Project.where(category_id: 2).delete_all
User.create(name:'XH_XJH',unit:'徐汇区徐家汇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_LH',unit:'徐汇区龙华社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_HJ',unit:'徐汇区华泾社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_LYHL',unit:'徐汇区凌云华理社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_HM',unit:'徐汇区虹梅社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_KJ',unit:'徐汇区康健社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_CH',unit:'徐汇区漕河泾社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_CQ',unit:'徐汇区长桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_XT',unit:'徐汇区斜土社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_HN',unit:'徐汇区湖南社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_TL',unit:'徐汇区田林社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_TP',unit:'徐汇区天平社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'XH_FL',unit:'徐汇区枫林社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JA_CJD',unit:'静安区曹家渡社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JA_JAS',unit:'静安区静安寺社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JA_NJXL',unit:'静安区南京西路社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JA_SMEL',unit:'静安区石门二路社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JA_JN',unit:'静安区江宁社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_TP',unit:'普陀区桃浦社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_CF',unit:'普陀区长风社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_CZ',unit:'普陀区长征社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_CY',unit:'普陀区曹扬社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_SQ',unit:'普陀区石泉社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_CS',unit:'普陀区长寿社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_GQ',unit:'普陀区甘泉社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_YC',unit:'普陀区宜川社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_ZR',unit:'普陀区真如社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PT_WL',unit:'普陀区万里街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_SP',unit:'杨浦区四平社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_YG',unit:'杨浦区延吉社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_YH',unit:'杨浦区殷行社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_WJC',unit:'杨浦区五角场社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_DH',unit:'杨浦区定海街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_PL',unit:'杨浦区平凉社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_JP',unit:'杨浦区江浦社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_KJ',unit:'杨浦区控江社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_DQ',unit:'杨浦区大桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_CB',unit:'杨浦区长白社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_WJCZ',unit:'杨浦区五角场镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'YP_JWC',unit:'杨浦区江湾城社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_NXZ',unit:'嘉定区南翔镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_ATZ',unit:'嘉定区安亭镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_ML',unit:'嘉定区马陆社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_JQ',unit:'嘉定区江桥镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_XHZ',unit:'嘉定区徐行镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_WGZ',unit:'嘉定区外冈镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_HTZ',unit:'嘉定区华亭镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_JDZ',unit:'嘉定区嘉定镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_XCL',unit:'嘉定区新成路社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_ZX',unit:'嘉定区真新街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_GYQ',unit:'嘉定工业区社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JD_JY',unit:'嘉定菊园新区社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_NJDL',unit:'黄浦区南京东路社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_HHZL',unit:'黄浦区淮海中路社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_DPQ',unit:'黄浦区打浦桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_WLQ',unit:'黄浦区五里桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_XDM',unit:'黄浦区小东门社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_DJEL',unit:'黄浦区瑞金二路社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_LXM',unit:'黄浦区老西门社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_YY',unit:'黄浦区豫园社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_BSY',unit:'黄浦区半淞园社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HP_WT',unit:'黄浦区外滩社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_BSL',unit:'闸北区宝山路街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_DN',unit:'闸北区大宁社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_LF',unit:'闸北区临汾路街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_PPXC',unit:'闸北区彭浦新村社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_PPZ',unit:'闸北区彭浦镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_GHXL',unit:'闸北区共和新路街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_ZJXL',unit:'闸北区芷江西路街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_TMXL',unit:'闸北区天目西路街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'ZB_BZ',unit:'闸北区北站街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_LDZ',unit:'宝山区罗店镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_WS',unit:'宝山区吴淞街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_LJ',unit:'宝山区罗泾市民体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_ZM',unit:'宝山区张庙社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_YP',unit:'宝山区月浦社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_YY',unit:'宝山区友谊社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_MH',unit:'宝山区庙行镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_DC',unit:'宝山区大场镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_GC',unit:'宝山区顾村镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_YH',unit:'宝山区杨行镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_SN',unit:'宝山区淞南镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'BS_GJ',unit:'宝山区高境镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_LX',unit:'金山区吕巷镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_FJ',unit:'金山区枫泾镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_ZY',unit:'金山区张堰镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_TL',unit:'金山区亭林镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_ZJ',unit:'金山区朱泾镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_CJ',unit:'金山区漕泾镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_LX',unit:'金山区廊下镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_JSW',unit:'金山区金山卫镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_SY',unit:'金山区山阳镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_GY',unit:'金山工业区社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'JS_SH',unit:'金山区石化街道社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_XJ',unit:'青浦区徐泾文化体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_HX',unit:'青浦区华新文化体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_XY',unit:'青浦区夏阳街道文化体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_ZX',unit:'青浦区赵巷镇社区文化体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_ZJJ',unit:'青浦区朱家角镇文化体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_CG',unit:'青浦区重固镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_BH',unit:'青浦区白鹤镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_YP',unit:'青浦区盈浦社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_XHQ',unit:'青浦区香花桥街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_LT',unit:'青浦区练塘镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'QP_JZ',unit:'青浦区金泽镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_NQ',unit:'奉贤区南桥镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_FC',unit:'奉贤区奉城镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_HW',unit:'奉贤区海湾镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_ST',unit:'奉贤区四团镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_TL',unit:'奉贤区柘林镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_QC',unit:'奉贤区青村镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_ZH',unit:'奉贤区庄行镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'FX_JH',unit:'奉贤区金汇镇社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_XH1',unit:'崇明新海镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_CJ',unit:'崇明陈家镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_CQ',unit:'崇明城桥镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_SX',unit:'崇明三星镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_DP',unit:'崇明东平镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_JS',unit:'崇明建设镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_XH2',unit:'崇明新河镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_SX',unit:'崇明竖新镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_XH3',unit:'崇明向化镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_BZ',unit:'崇明堡镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_GY',unit:'崇明港沿镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_MZ',unit:'崇明庙镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_ZX',unit:'崇明中兴镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_LH',unit:'崇明绿华镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_JX',unit:'崇明港西镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_CX',unit:'崇明长兴镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_XC',unit:'崇明新村乡',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CM_HS',unit:'崇明横沙乡',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_XJ',unit:'长宁区新泾体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_XH',unit:'长宁区新华社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_ZQ',unit:'长宁区周桥体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_HQ',unit:'长宁区虹桥体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_XX',unit:'长宁区仙霞社区体育俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_JS',unit:'长宁区江苏社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_HY',unit:'长宁区华阳社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_TS',unit:'长宁区天山社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_BXJ',unit:'长宁区北新泾社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'CN_CJQ',unit:'长宁区程家桥社区文化工作促进会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_YJ',unit:'浦东新区洋泾社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_XQ',unit:'浦东新区宣桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_WF',unit:'浦东新区潍坊社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_LJZ',unit:'浦东新区陆家嘴社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_BC',unit:'浦东新区北蔡社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_PX',unit:'浦东新区浦兴社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_CS',unit:'浦东新区川沙社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_ZJ',unit:'浦东新区张江社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_TZ',unit:'浦东新区唐镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_GQ',unit:'浦东新区高桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_ZP',unit:'浦东新区周浦社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_JQ',unit:'浦东新区金桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_TQ',unit:'浦东新区塘桥街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_ZJD',unit:'浦东新区周家渡街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_DM',unit:'浦东新区东明街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_SG',unit:'浦东新区上钢新村街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_HD',unit:'浦东新区沪东新村街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_JY',unit:'浦东新区金杨街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_NMT',unit:'浦东新区南码头路街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_HM',unit:'浦东新区花木街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_HQ',unit:'浦东新区合庆街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_CL',unit:'浦东新区曹路镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_GD',unit:'浦东新区高东镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_GH',unit:'浦东新区高行镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_SL',unit:'浦东新区三林镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_HN',unit:'浦东新区惠南镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_XC',unit:'浦东新区新场镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_DT',unit:'浦东新区大团镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_HT',unit:'浦东新区航头镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_KQ',unit:'浦东新区康桥镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_ZQ',unit:'浦东新区祝桥镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_NC',unit:'浦东新区泥城镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_SY',unit:'浦东新区书院镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_WX',unit:'浦东新区万祥镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_LJ',unit:'浦东新区老港镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'PD_NH',unit:'浦东新区南汇新城镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_YY',unit:'松江区区岳阳社区群众体育俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_ZS',unit:'松江区中山街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_YF',unit:'松江区永丰街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_FS',unit:'松江区方松街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_JT',unit:'松江区九亭镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_SJ',unit:'松江区泗泾镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_MG',unit:'松江区泖港镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_CD',unit:'松江区车墩镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_DJ',unit:'松江区洞泾镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_YX',unit:'松江区叶榭镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_XQ',unit:'松江区新桥镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_SHD',unit:'松江区石湖荡镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_XB',unit:'松江区新浜镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_SS',unit:'松江区佘山镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'SJ_XKS',unit:'松江区小昆山镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_HQ',unit:'闵行区虹桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_JC',unit:'闵行区江川路街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_GM',unit:'闵行区古美街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_XH',unit:'闵行区新虹街道',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_XZ',unit:'闵行区莘庄镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_QB',unit:'闵行区七宝镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_PJ',unit:'闵行区浦江镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_ML',unit:'闵行区梅龙镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_MQ',unit:'闵行区马桥镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_WJ',unit:'闵行区吴泾镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_HC',unit:'闵行区华漕镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'MH_ZQ',unit:'闵行区颛桥镇',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_JX',unit:'虹口区嘉兴社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_QY',unit:'虹口区曲阳社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_GZ',unit:'虹口区广中路社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_LC',unit:'虹口区凉城社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_OY',unit:'虹口区欧阳路社区体育协会',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_JWZ',unit:'虹口区江湾镇社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_TLQ',unit:'虹口区提篮桥社区体育健身俱乐部',password:'11111111', is_admin: false, role_id: '2')
User.create(name:'HK_SCBL',unit:'虹口四川北路街道',password:'11111111', is_admin: false, role_id: '2')

Project.create(category_id: 2,name:'太极拳——6式',serial:'B001-TY',description:'简介：传授太极拳基本技术、介绍传统的武术健身功法。6式太极拳基本套路包括：手型、手法、步型、步法，达到强身健体的目的。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'太极拳——8式',serial:'B002-TY',description:'简介：传授太极拳基本技术、介绍传统的武术健身功法。8式太极拳基本套路包括：手型、手法、步型、步法，达到强身健体的目的。
适宜年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'太极拳——24式',serial:'B003-TY',description:'简介：正确地习练传统太极拳，可以有效地调整人体生理和心理机制，从而使人体做到抻筋拔骨、经络通畅、气血贯通、强健脏器、增长内劲、胸怀宽广、养身养心、祛病延年，当前不仅在全国广泛推广，而且以科学、健康著称于世。
适合年龄：各年龄层
学成次数：20次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'太极拳——42式',serial:'B004-TY',description:'简介：正确地习练传统太极拳，可以有效地调整人体生理和心理机制，从而使人体做到抻筋拔骨、经络通畅、气血贯通、强健脏器、增长内劲、胸怀宽广、养身养心、祛病延年，当前不仅在全国广泛推广，而且以科学、健康著称于世。
适合年龄：各年龄层
学成次数：36次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'简易养身太极拳（站姿、坐姿、活步组合）',serial:'B005-TY',description:'简介：简易养身太极拳根据太极拳基本原理，通过站姿6组动作，坐姿6组动作，活步4组动作和合练8个动作的学练，让习练者初步理解，腰为主宰，上下相随，内外相合，阴阳平衡等太极原理。
适合年龄：各年龄层.
学成次数：25-30次
配送次数：10次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'孙式太极拳',serial:'B006-TY',description:'简介：太极拳结合易学等中国传统文化，融合中医经络学、古代导引、吐纳等养生方式，形成一种独具中国特色的传统拳术。通过长期习练太极拳，可以有效改善高血压等慢性疾病、预防肌肉萎缩等衰老症状。起到强身健体、心身兼修的目的。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'陈式太极拳',serial:'B007-TY',description:'简介：结合易学等中国传统文化，融合中医经络学、古代导引、吐纳等养生方式，形成一种独具中国特色的传统拳术
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'吴式太极拳',serial:'B008-TY',description:'简介：主要包括健身气功八段锦：介绍健身气功八段锦源流、健身作用等、教授健身气功八段锦各式动作、讲授健身气功八段锦功理作用。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'武式太极拳',serial:'B009-TY',description:'简介：主要包括“太乙游龙剑”是《太乙游龙门》系列中一个重要的器械套路，原名“太乙乘风剑”。寓意太乙真人乘风舞剑、翩翩而起的道骨仙风形象。
适合年龄：各年龄层
学成次数：10次
配送次数：40次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'杨氏太极拳',serial:'B010-TY',description:'简介：杨氏太极拳拳架舒展简洁，结构严谨，身法中正，动作和顺，轻灵沉着兼而有之；练法上由松入柔，刚柔相济，形成独特的风格。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'杨式太极拳推手系列',serial:'B011-TY',description:'简介：具有太极拳的养身健身效果，劲路突出，八面支撑，对腰腿身法步法，防治衰老都有不可替代作用，用意、气、神带动，增加身体灵活度，对减少老年性疾病无以复加。
适合年龄：各年龄层
学成次数：50次
配送次数：10次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'松鹤太极拳（集陈、杨、武、吴、孙太极特色）',serial:'B012-TY',description:'简介：松鹤太极拳是专门为中老年拳友创编的。整套拳40个动作，整套拳设有下势，蹬脚和摆莲动作，非常适合中老年拳友习练。
适合年龄：中老年
学成次数：30-35次
配送次数：10次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'太极剑',serial:'B013-TY',description:'简介：有利于增强体质、对高血压、低血压、神经衰弱、腹部内脏、关节肌肉起到较好的辅助医疗作用。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：自备道具')
Project.create(category_id: 2,name:'太极扇',serial:'B014-TY',description:'简介：有利于增强体质、对高血压、低血压、神经衰弱、腹部内脏、关节肌肉起到较好的辅助医疗作用。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：自备道具')
Project.create(category_id: 2,name:'太极书法',serial:'B015-TY',description:'简介：太极拳和书法同是我国的国粹，常式太极拳的特点与书法的要领更可以融会贯通，更能恰如其分的有机结合起来。以绵绵气韵注于笔端、将太极拳的上与下、高与低、进与退、柔与刚之动力自觉地赋予书法形式之上，使传统的书法作品更加生动舒展、圆润、飘逸、洒脱而柔美。既能强身健体又能提高书法艺术，既能修心养身又能提高文化涵养。把天人合一，文武合一，融为一体，是提高增强全民体质和文化素质，甚至创造反映出新时代的精神风格之貌。是一项静脉活络，循经导脉，内外兼修的整体运动功法。可伸筋拔骨，柔韧身体，防病祛病，强身健体。
适合年龄：各年龄层
学成次数：可根据情况制定
配送次数：10次
每次课时：1-1.5h
场地要求：10平米以上
设施要求：自备道具')
Project.create(category_id: 2,name:'太极功夫扇',serial:'B016-TY',description:'简介： 分步教授太极功法、太极步行、太极（扇）基本动作、太极（扇）组合动作
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：人均面积较大
设施要求：自备道具')
Project.create(category_id: 2,name:'木兰拳',serial:'B017-TY',description:'简介： 木兰拳的基本动作。项目具有可观赏、可自娱，增进免疫系统功能；陶冶情操、舒缓紧张心情的特点
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'木兰扇',serial:'B018-TY',description:'简介：木兰扇的基本动作。项目具有可观赏、可自娱，增进免疫系统功能；陶冶情操、舒缓紧张心情的特点
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：自备道具')
Project.create(category_id: 2,name:'木兰剑',serial:'B019-TY',description:'简介：木兰剑的基本动作。项目具有可观赏、可自娱，增进免疫系统功能；陶冶情操、舒缓紧张心情的特点
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：自备道具')
Project.create(category_id: 2,name:'南拳',serial:'B020-TY',description:'简介：主要介绍黑虎拳，包括左弓步冲拳、马步横靠、左弓步顶肘、翻掌、右扫腿插掌、右弓步推掌、转身撩阴。
适合年龄：各年龄层
学成次数：4次
配送次数：4次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'终南山形意拳',serial:'B021-TY',description:'简介：终南山形意是道教传承下来的。主修身健体，也具有击技内容，具有强身健体，传承武德的作用。
适合年龄：中青少年
学成次数：15次
配送次数：10次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'罗汉拳长拳慢打',serial:'B022-TY',description:'简介：主要学习武术基本功：(1)压腿、(2)踢腿、 (3)手型、(4)步型、(5)手法、(6)步法以及学习罗汉拳套路及攻防含义用法。
适合年龄：各年龄层
学成次数：12次
配送次数：10次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'伸筋拔骨健身功法',serial:'B023-TY',description:'简介：所谓伸筋，即由内而外地进行身体内部（骨骼、筋脉、肌肉等）与身体外部（如皮肤）的拉伸。就像伸懒腰一样，把每个关节都拉长，使淋巴结不受压迫。也就是要将这个拉伸的感觉慢慢扩展到全身，对年轻人的生长发育也有良好的作用，特别是未成年人，能促进发育，助长身高。
适合年龄：各年龄层
学成次数：7次
配送次数：7次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'练功十八法',serial:'B024-TY',description:'简介：主要针对防治颈、肩、腰、腿病以及某些慢性疾病起到一定的作用
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'少儿武术（少林拳和太极剑）',serial:'B025-TY',description:'简介：少儿武术主要课程是武术的基本功和套路辅导等，循序渐进的学习武术、和少林武术动作，通过这些课程的学习可使孩子的身体各部位得到全面的锻炼、提高儿童的身体机能和素质，促进身体正常发育及更好的培养少儿的自信心，和提高自我保护能力及人与人的交流能力。；基础训练阶段安排：腰功、腿功、臂功、桩功、力量、速度、协调、拳法、腿法、步法、 提高素质打好基本功法， 并学会基本武术套路五步拳。
适合年龄：青少年
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'彩巾操',serial:'B026-TY',description:'简介：第四套彩巾操项目由市老体协体操委员会和南东街道共同创编的中老年妇女健身活动项目之一,课程具有客观赏、可自娱、可健身的特点。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：自备丝巾')
Project.create(category_id: 2,name:'短棍操',serial:'B027-TY',description:'简介：短棍操是将武术中短棍的基本功、基本动作和音乐节拍相结合起来的一种锻炼形式，其动作包括短棍的基本手型、手法、步型、步法和腿法等。动作简单，容易学会。
适合年龄：各年龄层
学成次数：16次
配送次数：10次
每次课时：1-1.5h
场地要求：空间较高
设施要求：自备类似器材')
Project.create(category_id: 2,name:'健美操',serial:'B028-TY',description:'简介： 健美操的基本步伐，包括：1、一字步；2、V字步；3、manbo步；4、交叉步；5、迈步后屈腿。
适合年龄：各年龄层
学成次数：3次
配送次数：3次
每次课时：1-1.5h
场地要求：健身操房
设施要求：运动服饰')
Project.create(category_id: 2,name:'橡筋操',serial:'B029-TY',description:'简介：主要就是利用皮筋儿的弹力，在动作一张一弛的过程中，使肌肉得到很好的锻炼
适合年龄：各年龄层
学成次数：12次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地为主
设施要求：皮筋')
Project.create(category_id: 2,name:'广场舞',serial:'B030-TY',description:'简介：通过民族健身舞蹈的教学，配合优美的民族音乐，使学生受到民族文化的熏陶，感受民族文化魅力。
适合年龄：各年龄层
学成次数：6-8次
配送次数：6-8次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等室内场地
设施要求：')
Project.create(category_id: 2,name:'排舞',serial:'B031-TY',description:'简介：根据国际认证的排舞曲目来学习排舞，不但可以从中学到优雅的姿势，还可以放松心情，舒缓紧张的情绪，并且轻松达到健身减肥的效果，让生活更加健康美好。
适合年龄：各年龄层
学成次数：1次
配送次数：1次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等室内场地（有镜子）
设施要求：')
Project.create(category_id: 2,name:'秧歌',serial:'B032-TY',description:'简介：主要包括海派秧歌一、二、三、四、五套及全国第五套健身秧歌。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：')
Project.create(category_id: 2,name:'腰鼓',serial:'B033-TY',description:'简介：健身腰鼓1～4套、音乐腰鼓
适合年龄：各年龄层
学成次数：36次
配送次数：10次
每次课时：1-1.5h
场地要求：室内或不影响周边环境的室外场地
设施要求：自备道具')
Project.create(category_id: 2,name:'民族健身舞',serial:'B034-TY',description:'简介：主要包括1、藏族健身舞蹈；2、彝族健身舞蹈；3、秧歌健身舞蹈
适合年龄：各年龄层
学成次数：4-8次
配送次数：4-8次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等
设施要求：')
Project.create(category_id: 2,name:'健身舞蹈',serial:'B035-TY',description:'简介：拉丁健身舞是在拉丁舞和拉丁健身操的基础上创编而成的一种新颖健身操，它把伦巴、桑巴、斗牛、牛仔、恰恰等拉丁舞的基本舞步，与优美的拉丁健身操动作科学、巧妙地结合起来，具有浓郁的异国情调，动作优美，热情奔放。其动作强调髋部的摆动，因此对于腰部两侧的训练有特别效果。具有娱乐与健身的双重功效。它的锻炼侧重在腰和髋部，同时使大腿内侧得到充分锻炼，所以对腰腹的锻炼和减肥有很好的效果。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等
设施要求：')
Project.create(category_id: 2,name:'休闲舞蹈',serial:'B036-TY',description:'简介：通过民族健身舞蹈的教学，配合优美的民族音乐，使学生受到民族文化的熏陶，感受民族文化魅力的同时，培养良好学生的节奏感及审美情趣，开发学员肢体的协调能力、平衡能力、肌肉能力及耐力。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等
设施要求：')
Project.create(category_id: 2,name:'体育舞蹈：华尔兹',serial:'B037-TY',description:'简介：让学员了解音乐的基本节奏，舞蹈的风格，特性等。然后学习舞步的前进后退，横步，分步，并步。学习降，升，摆荡，倾斜等。掌握好重心。
适合年龄：各年龄层
学成次数：6次
配送次数：6次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等
设施要求：')
Project.create(category_id: 2,name:'体育舞蹈：拉丁舞',serial:'B038-TY',description:'简介：分为单人基础部分/ 单人提高/双人组合基础部分/双人组合提高/竞赛组合。
适合年龄：各年龄层
学成次数：16次
配送次数：10次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等
设施要求：落地镜/音响/音频线/空调/')
Project.create(category_id: 2,name:'体育舞蹈：爵士舞',serial:'B039-TY',description:'简介：主要教学内容为爵士舞基本功（含韧带、身体灵活性、身体协调性、平衡性、身体控制力、舞姿规范化、动作质感、爵士舞动律、乐感节奏培养等），形成爵士舞不同级别作品展示。
适合年龄：各年龄层
学成次数：8次
配送次数：8次
每次课时：1-1.5h
场地要求：舞蹈房、体操房等
设施要求：')
Project.create(category_id: 2,name:'足球',serial:'B040-TY',description:'简介：球性球感，各种触球练习、花式足球；基本技术，传球、接球、运球、守门员技术等；比赛规则，足球比赛基本规则，犯规动作、如何判断、裁判手势等。
适合年龄：青少年为主
学成次数：16次
配送次数：10次
每次课时：1-1.5h
场地要求：足球场
设施要求：足球')
Project.create(category_id: 2,name:'花式足球',serial:'B041-TY',description:'简介： 教学内容：起球，控制空中球(ATw)、控制地面球(各种过人动作)、小场地实战。项目具有街头玩耍的风格，深受都市孩子们的喜欢。主张兴趣为主，手段方法围绕兴趣开展，目的是锻炼身体、指标是每次都出汗。
适合年龄：青少年为主
学成次数：20-30次
配送次数：10次
每次课时：1-1.5h
场地要求：足球场
设施要求：足球')
Project.create(category_id: 2,name:'篮球',serial:'B042-TY',description:'简介：一、认知目标：了解行进间传接球动作的动作概念和技术特点；通过实践基本明确篮球进攻步法的动作方法和要领；二、技能目标：使学生基本掌握篮球行进间传接球动作；并能够在实践中灵活用运；发展学生身体素质，促进健康；三、情感目标：发展个性，培养勤学苦练、顽强拼搏的精神。
适合年龄：中青少年
学成次数：12次
配送次数：10次
每次课时：1-1.5h
场地要求：篮球场
设施要求：篮球')
Project.create(category_id: 2,name:'中小学排球',serial:'B043-TY',description:'简介： 一、认知目标：了解行进间传接球动作的动作概念和技术特点；通过实践基本明确篮球进攻步法的动作方法和要领；二、技能目标：使学生基本掌握篮球行进间传接球动作；并能够在实践中灵活用运；发展学生身体素质，促进健康；三、情感目标：发展个性，培养勤学苦练、顽强拼搏的精神。
适合年龄：中小学生
学成次数：12次
配送次数：10次
每次课时：1-1.5h
场地要求：室内排球场
设施要求：排球')
Project.create(category_id: 2,name:'乒乓球',serial:'B044-TY',description:'简介： 内容：乒乓球基本动作和技能，包括：握拍、姿势、多种发球方式等。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：乒乓球房
设施要求：乒乓球拍和乒乓球 ')
Project.create(category_id: 2,name:'羽毛球',serial:'B045-TY',description:'简介：通过学习，提高对羽毛球运动的兴趣，体验羽毛球运动的价值和特点，并掌握和学会应用基本的体育与健康知识，形成坚持锻炼的习惯。初步掌握羽毛球运动的主要击球技术和运动技能，学习羽毛球运动观赛、比赛、练习基本礼仪，提高自身人文素质，培养和谐良好的合作精神，将健康、快乐、和谐的宗旨贯穿羽毛球活动中。
适合年龄：各年龄层
学成次数：4-8次
配送次数：4-8次
每次课时：1-1.5h
场地要求：羽毛球场
设施要求：羽毛球拍和羽毛球')
Project.create(category_id: 2,name:'网球',serial:'B046-TY',description:'简介：教学内容:网运动健身及球场礼仪；羽毛球基本知识及术语；主要击球技术及练习方法；如何欣赏高水平网球赛事。通过学习，提高对网球运动的兴趣，体验网球运动的价值和特点，并掌握和学会应用基本的体育与健康知识，形成坚持锻炼的习惯。初步掌握网球运动的主要击球技术和运动技能，学习网球运动观赛、比赛、练习基本礼仪，提高自身人文素质，培养和谐良好的合作精神，将健康、快乐、和谐的宗旨贯穿网球活动。
适合年龄：各年龄层
学成次数：8次
配送次数：8次
每次课时：1-1.5h
场地要求：网球场
设施要求：网球拍和网球')
Project.create(category_id: 2,name:'气排球',serial:'B047-TY',description:'简介：气排球运动是一项集运动、休闲、娱乐为一体的群众性体育项目，作为一项新的体育运动项目，如今已经受到越来越多老年朋友的青睐。运动量适宜。气排球活动有跑、跳、蹲、转身，使脑、眼、手、腰、脚等都运动，但活动量不大，有利于健身强体。
适合年龄：老年群体
学成次数：5-10次
配送次数：5-10次
每次课时：1-1.5h
场地要求：室外场地为主
设施要求：')
Project.create(category_id: 2,name:'高尔夫',serial:'B048-TY',description:'简介：高尔夫基本规则和礼仪；高尔夫竞赛方法。
适合年龄：青少年和中老年
学成次数：6次
配送次数：6次
每次课时：1-1.5h
场地要求：高尔夫练习场、打击笼
设施要求：自备球杆')
Project.create(category_id: 2,name:'毽球',serial:'B049-TY',description:'简介：毽球主要学习踢球、触球、传球、发球等基本技术，学习毽球比赛规则，组织小型毽球比赛。
适合年龄：各年龄层
学成次数：5次
配送次数：5次
每次课时：1-1.5h
场地要求：室内外均可（场地平整）
设施要求：')
Project.create(category_id: 2,name:'风筝',serial:'B050-TY',description:'简介： 《风筝放飞技术》风筝运动不但能增进人们人体健康，还具有治疗颈椎病、神经衰弱、抑郁症，以及预防近视等功效。放风筝不仅是一项有益的户外运动，还可以在室内进行。随着器材的改进，风筝表演也成为现代时尚娱乐休闲活动的最佳选择。课程内容包括：1.户外普通风筝的放飞技巧；2.室内盘鹰风筝的放飞技巧；3.户外运动风筝的放飞技巧；4.学习风筝比赛规则，组织小型风筝比赛和表演；5.简易风筝（串式风筝、软体风筝、三角风筝）制作理论与实践；6.风筝与颈椎病、神经衰弱、抑郁症、近视的防治及运动处方。
适合年龄：各年龄层
学成次数：16次
配送次数：10次
每次课时：1-1.5h
场地要求：场地开阔、平整，周围无高楼、高树、电线杆等，海滩和公园的大片草地最佳。
设施要求：根据课程进度携带器材')
Project.create(category_id: 2,name:'空竹',serial:'B051-TY',description:'简介：学习单轮空竹和双轮空竹的20多种基本抖法。
适合年龄：各年龄层
学成次数：5次
配送次数：5次
每次课时：1-1.5h
场地要求：室内外均可（场地平整）
设施要求：自备器材')
Project.create(category_id: 2,name:'手拍鼓',serial:'B052-TY',description:'简介： 健身手拍鼓是根据腰鼓创编的，强度适中，健身者用手指弹击、手掌拍打、手背甩打、手臂摆打等方式击打鼓面。手拍鼓体积小于腰鼓，可固定在身体多个部位，适宜各年龄段的练习者。
适合年龄：各年龄层
学成次数：10次
配送次数：10次
每次课时：1-1.5h
场地要求：室内场地
设施要求：自备器材')
Project.create(category_id: 2,name:'跳竹',serial:'B053-TY',description:'简介：1. 打竹竿的基本姿势，敲击竹竿的基本节奏，竹竿舞的基本跳法等基本技术；2. 十种快乐竹竿舞的打法和跳法：包括竹竿舞花样的基本线路、基本摆法、基本姿势和基本步伐等；3. 竹竿舞拓展游戏的基本规则、竞赛办法以及创意指南。
适合年龄：各年龄层
学成次数：16次
配送次数：10次
每次课时：1-1.5h
场地要求：室内外均可（场地平整）
设施要求：空竹、竹竿若干')
Project.create(category_id: 2,name:'剑道',serial:'B054-TY',description:'简介：让初学者掌握剑道礼仪、基本动作以及适量的体能训练。另外，对剑道运动中的套路进行讲解，帮助学员更好的理解和提高。
适合年龄：各年龄层
学成次数：4-12次
配送次数：4-10次
每次课时：1-1.5h
场地要求：室内80㎡及以上，木质地板，无立柱，顶高≥3.5m的空间
设施要求：根据课程进度安排')
Project.create(category_id: 2,name:'空手道',serial:'B055-TY',description:'简介： 主要学习基本热身运动、体能、柔韧、组手（实战）、协调性，防卫等。
适合年龄：35岁以下
学成次数：24次
配送次数：10次
每次课时：1-1.5h
场地要求：地垫（地板也可）、把杆、镜子
设施要求：')
Project.create(category_id: 2,name:'跆拳道',serial:'B056-TY',description:'简介：以腿为主，以手为辅，主要在于腿法的运用。跆拳道攻击方法中起主导地位的是腿法，腿法技术在整体运用中约占3/4，因为腿的长度和力量是人体最长最大的，其次才是手。腿的技法有很多种形式，可高可低、可近可远、可左可右、可直可屈、可转可旋，威胁力极大，是实用制敌的有效方法。
礼仪：对人有礼，不卑不亢
廉耻：有羞耻之心，知耻而后勇
忍耐：有毅力，能包容
克己：有自制力，控制自己的情绪，欲望
百折不屈：遭遇挫折不气馁，永不言弃，越挫越勇 ""
适合年龄：35岁以下
学成次数：24次
配送次数：10次
每次课时：1-1.5h
场地要求：地垫（地板也可）、把杆、镜子.练功房都可以
设施要求：')
Project.create(category_id: 2,name:'瑜伽',serial:'B057-TY',description:'简介：流瑜伽：强调运动与呼吸的和谐性，侧重伸展性，力量性，柔韧性，耐力，平衡性，与专注力，体式之间连接给人一气呵成之感，仔细体会身体的感受。适合健康年轻人，想减肥排毒人，不建议体弱多病者练习；哈达瑜伽，着重在提升精神与肉体的健康。哈达瑜伽透过呼吸法，达到肉体与精神的净化，同步化。
适合年龄：中、青、少年
学成次数：8-16次
配送次数：8- 10次
每次课时：1-1.5h
场地要求：普通排练房
设施要求：自备瑜伽垫')
Project.create(category_id: 2,name:'飞镖运动',serial:'B058-TY',description:'简介：教学内容包括：飞镖运动介绍、飞镖基本动作、飞镖竞赛规则及编排、飞镖竞赛裁判法。
适合年龄：各年龄层
学成次数：3-5次
配送次数：3-5次
每次课时：1-1.5h
场地要求：室内场地
设施要求：有飞镖靶、镖道')
Project.create(category_id: 2,name:'花样跳绳',serial:'B059-TY',description:'简介：个人花样基本跳；个人花样步法（开合跳、前后跳、弓步跳、肯肯跳等）；基本交叉动作，缠绕绳动作 长绳：绕“8”字跳绳，绳中绳，彩虹等.。
适合年龄：中、青、少年为主
学成次数：25-30次
配送次数：10次
每次课时：1-1.5h
场地要求：室内木地板或室外塑胶地，大小：以20人为例，大致需要14X8米的场地
设施要求：跳绳')
Project.create(category_id: 2,name:'健步走与慢跑',serial:'B060-TY',description:'简介： 讲解和示范健步走、慢跑的着装、运动时间、姿态与呼吸等，防止运动损伤、加强运动有效性。
适合年龄：各年龄层
学成次数：1-2次
配送次数：1-2次
每次课时：1-1.5h
场地要求：室内室外均可
设施要求：')
Project.create(category_id: 2,name:'健身器材使用',serial:'B061-TY',description:'简介：讲述中老年人群社区健身器材名称、功能、使用方法、锻炼强度和量以及不同身体状况的锻炼方法。
适合年龄：中老年人
学成次数：8次
配送次数：8次
每次课时：1-1.5h
场地要求：社区健身苑
设施要求：')
Project.create(category_id: 2,name:'健身小游戏',serial:'B062-TY',description:'简介：通过参加游戏活动，达到健身目的。
适合年龄：各年龄层
学成次数：4次
配送次数：4次
每次课时：1-1.5h
场地要求：田径场或空地
设施要求：')
Project.create(category_id: 2,name:'健身指导',serial:'B063-TY',description:'简介：主要介绍专项体能训练；身体基本运动能力监测与评价；运动损伤预防与康复训练。健康体适能训练课程健身功能：促进体能发展，促进各种体育运动专项技术运动表现，各种人群运动损伤的预防与康复。
适合年龄：各年龄层
学成次数：1-4次
配送次数：1-4次
每次课时：1-1.5h
场地要求：健身房
设施要求：')
Project.create(category_id: 2,name:'体适能训练（提高个人身体活动的适应能力）',serial:'B064-TY',description:'简介： 亲子运动项目分为三期，每一期包含十次训练。
第一期“有的玩“公益体育项目共分十次课程。目标是让孩子和家长了解热身的重要性，形成正确的运动观，为养成长期运动习惯奠定基础，具体方法如下：
1.NPT20热身基础知识的普及
2.通过趣味训练激发孩子们的爆发力、稳定性、协调性、灵敏性
3.了解橄榄球接球技术
4.了解橄榄球传球技术
5.尝试橄榄球摆脱技巧
第二期有的玩项目共分十次课程。目标是让孩子和家长了解橄榄球的技战术技巧，具体方法如下：
1.提升孩子的爆发力、稳定性、协调性、灵敏性
2.掌握橄榄球接球技术
3.掌握橄榄球传球技术
4.熟练掌握橄榄球摆脱技巧
5.体验橄榄球对抗比赛
第三期有的玩项目共分十次课程。目标是让孩子和家长尝试团队比赛，并开始享受团队协作的乐趣，具体方法如下：
1.稳定孩子的爆发力、稳定性、协调性、灵敏性，提升综合身体素质
2.稳定橄榄球传接球技术
3.熟练掌握橄榄球摆脱技巧
4.了解橄榄球防守基本技巧
5.尝试正式的橄榄球对抗比赛
适合年龄：亲子项目
学成次数：3*10次
配送次数：10次
每次课时：1-1.5h
场地要求：首选天然草地（如绿地或者公园），其余场地可以是人工草场，塑胶场地，羽毛球场地，室内木地板等较为平坦的场地。
设施要求：')
