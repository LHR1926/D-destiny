math.randomseed(tostring(os.time()):reverse():sub(1, 10))
file = io.open("list.lua", "r")

function name() --姓名
    s_surname = file:read()
    d_surname = file:read("*l")
    name = file:read("*l")
    a = string.len(s_surname) / 2
    b = string.len(d_surname) / 4
    c = string.len(name) / 2
    flag = math.random(1, a + b)
    if flag <= a then
        x = math.random(1, a)
        pl_surname = string.sub(s_surname, 2 * x - 1, 2 * x)
    else
        x = math.random(1, b)
        pl_surname = string.sub(d_surname, 4 * x - 3, 4 * x)
    end
    flag = math.random(1, 2)
    if flag == 1 then
        x = math.random(1, c)
        pl_name = string.sub(name, 2 * x - 1, 2 * x)
    else
        x = math.random(1, c)
        y = math.random(1, c)
        pl_name = string.sub(name, 2 * x - 1, 2 * x) .. string.sub(name, 2 * y - 1, 2 * y)
    end
    print(pl_surname .. pl_name)
end

function sex() --性别
    pl_sex = math.random(1, 2)
    if pl_sex == 1 then
        print("男")
    else
        print("女")
    end
end

function personality() --性格
    pl_openness = math.random(20, 100) --具有想象、审美、情感丰富、求异、创造、智能等特质
    pl_conscientiousness = math.random(20, 100) --显示胜任、公正、条理、尽职、成就、自律、谨慎、克制等特点
    pl_extraversion = math.random(20, 100) --表现出热情、社交、果断、活跃、冒险、乐观等特质
    pl_agreeableness = math.random(20, 100) --具有信任、利他、直率、依从、谦虚、移情等特质
    pl_neuroticism = math.random(20, 100) --难以平衡焦虑、敌对、压抑、自我意识、冲动、脆弱等情绪的特质，即不具有保持情绪稳定的能力

    pl_fantasy = math.random(1, pl_openness)
    if pl_fantasy  >= 75 then
        print("充满幻想")
    elseif pl_fantasy <= 10 then
        print("脚踏实地")
    end
    pl_aesthetics = math.random(1, pl_openness)
    if pl_aesthetics  >= 75 then
        print("高审美")
    elseif pl_aesthetics <= 10 then
        print("低审美")
    end
    pl_feelings = math.random(1, pl_openness)
    if pl_feelings  >= 75 then
        print("敏感纤弱")
    elseif pl_feelings <= 10 then
        print("粗神经")
    end
    pl_actions = math.random(1, pl_openness)
    if pl_actions  >= 75 then
        print("喜好创新")
    elseif pl_actions <= 10 then
        print("喜欢熟悉区")
    end
    pl_ideas = math.random(1, pl_openness)
    if pl_ideas  >= 75 then
        print("求知欲")
    elseif pl_ideas <= 10 then
        print("务实")
    end
    pl_values = math.random(1, pl_openness)
    if pl_values  >= 75 then
        print("挑战权威")
    elseif pl_values <= 10 then
        print("顺从")
    end
    print(" ")

    pl_competence = math.random(1, pl_conscientiousness)
    if pl_competence  >= 75 then
        print("高效")
    elseif pl_competence <= 10 then
        print("效率低下")
    end
    pl_order = math.random(1, pl_conscientiousness)
    if pl_order  >= 75 then
        print("井井有条")
    elseif pl_order <= 10 then
        print("粗心")
    end
    pl_dutifulness = math.random(1, pl_conscientiousness)
    if pl_dutifulness  >= 75 then
        print("责任感")
    elseif pl_dutifulness <= 10 then
        print("漫不经心")
    end
    pl_achievement = math.random(1, pl_conscientiousness)
    if pl_achievement  >= 75 then
        print("抱负远大，追求卓越")
    elseif pl_achievement <= 10 then
        print("缺乏抱负，易于满足")
    end
    pl_discipline = math.random(1, pl_conscientiousness)
    if pl_discipline  >= 75 then
        print("自律，迎难而上")
    elseif pl_discipline <= 10 then
        print("无自制力，畏难")
    end
    pl_deliberation = math.random(1, pl_conscientiousness)
    if pl_deliberation  >= 75 then
        print("慎重")
    elseif pl_deliberation <= 10 then
        print("冲动")
    end
    print(" ")

    pl_warmth = math.random(1, pl_extraversion)
    if pl_warmth  >= 75 then
        print("热情大方")
    elseif pl_warmth <= 10 then
        print("冷淡疏远")
    end
    pl_gregariousness = math.random(1, pl_extraversion)
    if pl_gregariousness  >= 75 then
        print("开朗乐群")
    elseif pl_gregariousness <= 10 then
        print("喜欢独处")
    end
    pl_assertiveness = math.random(1, pl_extraversion)
    if pl_assertiveness  >= 75 then
        print("魄力十足")
    elseif pl_assertiveness <= 10 then
        print("谦逊")
    end
    pl_activity = math.random(1, pl_extraversion)
    if pl_activity  >= 75 then
        print("活力四射")
    elseif pl_activity <= 10 then
        print("慢性子")
    end
    pl_excitement = math.random(1, pl_extraversion)
    if pl_excitement  >= 75 then
        print("爱冒险")
    elseif pl_excitement <= 10 then
        print("不爱冒险")
    end
    pl_positive = math.random(1, pl_extraversion)
    if pl_positive  >= 75 then
        print("乐观积极")
    elseif pl_positive <= 10 then
        print("严肃")
    end
    print(" ")

    pl_trust = math.random(1, pl_agreeableness)
    if pl_trust  >= 75 then
        print("信任他人")
    elseif pl_trust <= 10 then
        print("猜忌")
    end
    pl_honest = math.random(1, pl_agreeableness)
    if pl_honest  >= 75 then
        print("坦率")
    elseif pl_honest <= 10 then
        print("城府深重")
    end
    pl_altruism = math.random(1, pl_agreeableness)
    if pl_altruism  >= 75 then
        print("乐于助人")
    elseif pl_altruism <= 10 then
        print("自私")
    end
    pl_compliance = math.random(1, pl_agreeableness)
    if pl_compliance  >= 75 then
        print("温顺")
    elseif pl_compliance <= 10 then
        print("倔强")
    end
    pl_modest = math.random(1, pl_agreeableness)
    if pl_modest  >= 75 then
        print("谦逊")
    elseif pl_modest <= 10 then
        print("傲慢")
    end
    pl_sympathy = math.random(1, pl_agreeableness)
    if pl_sympathy  >= 75 then
        print("富有同情心")
    elseif pl_sympathy <= 10 then
        print("冷酷")
    end
    print(" ")

    pl_anxiety = math.random(1, pl_neuroticism)
    if pl_anxiety  >= 75 then
        print("焦虑")
    elseif pl_anxiety <= 10 then
        print("平和")
    end
    pl_angry = math.random(1, pl_neuroticism)
    if pl_angry  >= 75 then
        print("暴躁")
    elseif pl_angry <= 10 then
        print("友善")
    end
    pl_depression = math.random(1, pl_neuroticism)
    if pl_depression  >= 75 then
        print("忧郁")
    elseif pl_depression <= 10 then
        print("积极")
    end
    pl_self = math.random(1, pl_neuroticism)
    if pl_self  >= 75 then
        print("害羞")
    elseif pl_self <= 10 then
        print("自信")
    end
    pl_impulsiveness = math.random(1, pl_neuroticism)
    if pl_impulsiveness  >= 75 then
        print("欲望主导")
    elseif pl_impulsiveness <= 10 then
        print("自我规制")
    end
    pl_vulnerability = math.random(1, pl_neuroticism)
    if pl_vulnerability  >= 75 then
        print("脆弱")
    elseif pl_vulnerability <= 10 then
        print("大心脏")
    end
    print(" ") 

end

function experience()   --经历
    -- body
end

name()
sex()
personality()
experience() 
while 1 do
    -- body
end
