math.randomseed(tostring(os.time()):reverse():sub(1, 10))
file = io.open("list.lua", "r")

function name() --����
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

function sex() --�Ա�
    pl_sex = math.random(1, 2)
    if pl_sex == 1 then
        print("��")
    else
        print("Ů")
    end
end

function personality() --�Ը�
    pl_openness = math.random(20, 100) --����������������зḻ�����졢���졢���ܵ�����
    pl_conscientiousness = math.random(20, 100) --��ʾʤ�Ρ�������������ְ���ɾ͡����ɡ����������Ƶ��ص�
    pl_extraversion = math.random(20, 100) --���ֳ����顢�罻�����ϡ���Ծ��ð�ա��ֹ۵�����
    pl_agreeableness = math.random(20, 100) --�������Ρ�������ֱ�ʡ����ӡ�ǫ�顢���������
    pl_neuroticism = math.random(20, 100) --����ƽ�⽹�ǡ��жԡ�ѹ�֡�������ʶ���嶯�����������������ʣ��������б��������ȶ�������

    pl_fantasy = math.random(1, pl_openness)
    if pl_fantasy  >= 75 then
        print("��������")
    elseif pl_fantasy <= 10 then
        print("��̤ʵ��")
    end
    pl_aesthetics = math.random(1, pl_openness)
    if pl_aesthetics  >= 75 then
        print("������")
    elseif pl_aesthetics <= 10 then
        print("������")
    end
    pl_feelings = math.random(1, pl_openness)
    if pl_feelings  >= 75 then
        print("��������")
    elseif pl_feelings <= 10 then
        print("����")
    end
    pl_actions = math.random(1, pl_openness)
    if pl_actions  >= 75 then
        print("ϲ�ô���")
    elseif pl_actions <= 10 then
        print("ϲ����Ϥ��")
    end
    pl_ideas = math.random(1, pl_openness)
    if pl_ideas  >= 75 then
        print("��֪��")
    elseif pl_ideas <= 10 then
        print("��ʵ")
    end
    pl_values = math.random(1, pl_openness)
    if pl_values  >= 75 then
        print("��սȨ��")
    elseif pl_values <= 10 then
        print("˳��")
    end
    print(" ")

    pl_competence = math.random(1, pl_conscientiousness)
    if pl_competence  >= 75 then
        print("��Ч")
    elseif pl_competence <= 10 then
        print("Ч�ʵ���")
    end
    pl_order = math.random(1, pl_conscientiousness)
    if pl_order  >= 75 then
        print("��������")
    elseif pl_order <= 10 then
        print("����")
    end
    pl_dutifulness = math.random(1, pl_conscientiousness)
    if pl_dutifulness  >= 75 then
        print("���θ�")
    elseif pl_dutifulness <= 10 then
        print("��������")
    end
    pl_achievement = math.random(1, pl_conscientiousness)
    if pl_achievement  >= 75 then
        print("����Զ��׷��׿Խ")
    elseif pl_achievement <= 10 then
        print("ȱ����������������")
    end
    pl_discipline = math.random(1, pl_conscientiousness)
    if pl_discipline  >= 75 then
        print("���ɣ�ӭ�Ѷ���")
    elseif pl_discipline <= 10 then
        print("����������η��")
    end
    pl_deliberation = math.random(1, pl_conscientiousness)
    if pl_deliberation  >= 75 then
        print("����")
    elseif pl_deliberation <= 10 then
        print("�嶯")
    end
    print(" ")

    pl_warmth = math.random(1, pl_extraversion)
    if pl_warmth  >= 75 then
        print("�����")
    elseif pl_warmth <= 10 then
        print("�䵭��Զ")
    end
    pl_gregariousness = math.random(1, pl_extraversion)
    if pl_gregariousness  >= 75 then
        print("������Ⱥ")
    elseif pl_gregariousness <= 10 then
        print("ϲ������")
    end
    pl_assertiveness = math.random(1, pl_extraversion)
    if pl_assertiveness  >= 75 then
        print("����ʮ��")
    elseif pl_assertiveness <= 10 then
        print("ǫѷ")
    end
    pl_activity = math.random(1, pl_extraversion)
    if pl_activity  >= 75 then
        print("��������")
    elseif pl_activity <= 10 then
        print("������")
    end
    pl_excitement = math.random(1, pl_extraversion)
    if pl_excitement  >= 75 then
        print("��ð��")
    elseif pl_excitement <= 10 then
        print("����ð��")
    end
    pl_positive = math.random(1, pl_extraversion)
    if pl_positive  >= 75 then
        print("�ֹۻ���")
    elseif pl_positive <= 10 then
        print("����")
    end
    print(" ")

    pl_trust = math.random(1, pl_agreeableness)
    if pl_trust  >= 75 then
        print("��������")
    elseif pl_trust <= 10 then
        print("�¼�")
    end
    pl_honest = math.random(1, pl_agreeableness)
    if pl_honest  >= 75 then
        print("̹��")
    elseif pl_honest <= 10 then
        print("�Ǹ�����")
    end
    pl_altruism = math.random(1, pl_agreeableness)
    if pl_altruism  >= 75 then
        print("��������")
    elseif pl_altruism <= 10 then
        print("��˽")
    end
    pl_compliance = math.random(1, pl_agreeableness)
    if pl_compliance  >= 75 then
        print("��˳")
    elseif pl_compliance <= 10 then
        print("��ǿ")
    end
    pl_modest = math.random(1, pl_agreeableness)
    if pl_modest  >= 75 then
        print("ǫѷ")
    elseif pl_modest <= 10 then
        print("����")
    end
    pl_sympathy = math.random(1, pl_agreeableness)
    if pl_sympathy  >= 75 then
        print("����ͬ����")
    elseif pl_sympathy <= 10 then
        print("���")
    end
    print(" ")

    pl_anxiety = math.random(1, pl_neuroticism)
    if pl_anxiety  >= 75 then
        print("����")
    elseif pl_anxiety <= 10 then
        print("ƽ��")
    end
    pl_angry = math.random(1, pl_neuroticism)
    if pl_angry  >= 75 then
        print("����")
    elseif pl_angry <= 10 then
        print("����")
    end
    pl_depression = math.random(1, pl_neuroticism)
    if pl_depression  >= 75 then
        print("����")
    elseif pl_depression <= 10 then
        print("����")
    end
    pl_self = math.random(1, pl_neuroticism)
    if pl_self  >= 75 then
        print("����")
    elseif pl_self <= 10 then
        print("����")
    end
    pl_impulsiveness = math.random(1, pl_neuroticism)
    if pl_impulsiveness  >= 75 then
        print("��������")
    elseif pl_impulsiveness <= 10 then
        print("���ҹ���")
    end
    pl_vulnerability = math.random(1, pl_neuroticism)
    if pl_vulnerability  >= 75 then
        print("����")
    elseif pl_vulnerability <= 10 then
        print("������")
    end
    print(" ") 

end

function experience()   --����
    -- body
end

name()
sex()
personality()
experience() 
while 1 do
    -- body
end
