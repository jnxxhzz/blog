-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-12-25 09:50:00
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_article`
--

CREATE TABLE `jnxxhzz_article` (
  `article_id` smallint(5) UNSIGNED NOT NULL COMMENT '博文自增ID',
  `article_name` varchar(30) NOT NULL COMMENT '文章标题',
  `article_author` varchar(10) NOT NULL DEFAULT 'admin' COMMENT '文章作者',
  `publish_time` int(10) UNSIGNED NOT NULL COMMENT '发布时间',
  `modify_time` int(10) UNSIGNED NOT NULL COMMENT '修改时间',
  `category_id` smallint(5) UNSIGNED NOT NULL COMMENT '所属分类ID',
  `article_keyword` varchar(30) NOT NULL COMMENT '关键字',
  `article_img` varchar(150) NOT NULL COMMENT '预览图片地址',
  `article_thumb` varchar(150) NOT NULL COMMENT '缩略图地址',
  `is_top` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否置顶',
  `article_view` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '查看人数',
  `article_like` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '点赞数',
  `article_desc` text NOT NULL COMMENT '文章简述',
  `article_content` mediumtext NOT NULL COMMENT '文章内容'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_article`
--

INSERT INTO `jnxxhzz_article` (`article_id`, `article_name`, `article_author`, `publish_time`, `modify_time`, `category_id`, `article_keyword`, `article_img`, `article_thumb`, `is_top`, `article_view`, `article_like`, `article_desc`, `article_content`) VALUES
(3, '浙中医大计算机系新生指南', 'jnxxhzz', 1508316518, 1512959879, 4, '新生 计算机 C++ 欢迎 医信', '2017-10-18/384c3465ffa5c5d49e0194087f26a1c8.jpg', '2017-10-18/384c3465ffa5c5d49e0194087f26a1c8_thumb.jpg', 1, 140, 14, '勉强算是新生学习指南吧，欢迎各位同学来到浙江中医药大学~', '[TOC]\r\n\r\n\r\n### 如果你还没有入学\r\n&gt; 开学前建议一定要看完罗杰老师的视频\r\n大一会教C语言和C++ 有兴趣的可以先预习一下下面是链接\r\n浙中医大校内罗杰老师：\r\nhttp://v.youku.com/v_show/id_XMTMyMDEwMDY2OA==.html\r\n密码ZCMU\r\n\r\n###浙大慕课\r\n&gt; 浙大翁恺老师：\r\nhttp://mooc.study.163.com/learn/ZJU-1000002011?\r\n入门可以和这个小游戏一起，比较容易理解函数递归之类的东西是什么意思...\r\n毕竟游戏大家都会玩：http://flash.17173.com/flashfile/2011-06-18/20110618113610582.shtml\r\n\r\n### 本校OJ(JudgeOnline)\r\n&gt; 学校OJ：http://acm.zcmu.edu.cn\r\n右上角注册账号就可以做题目练习,有问题可以私聊我询问\r\n&gt; &gt;这里有一点请注意\r\n如果是本校学生，注册时请尽量用自己的学号作为ID\r\n\r\n### 开始练习\r\n&gt; 建议初学者按照图片中的题目进行你的学习，也就是从题号 1061 开始\r\n题目右方有一个分类：C语言练习题\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-18/03757721eba7a08a566032e951433aa8.png)\r\n\r\n### 提交代码以及查看结果\r\n&gt; 每道题目中都有三个选项\r\nSubmit(提交)，Status(状态)，Web Board(讨论版)\r\n![](http://121.42.156.39/Public/Upload/2017-10-18/7d7cee6733cfc31bbb100bd20efae514.png)\r\n\r\n通过提交选项，我们可以提交自己的代码，在提交后，页面会自动跳转到Status界面以方便同学查看自己的代码运行结果\r\n&gt; \r\n![](http://121.42.156.39/Public/Upload/2017-10-18/920aaca453c8e961ab108caf403e1a80.png)\r\n在Status界面我们可以看到\r\nRunID(运行编号)\r\nUser(用户)\r\nProblem(题号)\r\nResult(结果)\r\nMemory(内存消耗)\r\nTime(时间消耗/ms)\r\nLanguage(语言)\r\nCode Length(代码长度)\r\nSubmit Time(提交时间)\r\n\r\n那么同学们关心的呢显然是自己的Result\r\n在Result中，同学们最容易看到的肯定是\r\n绿色的Accepted(正确)以及Wrong Answer(答案错误)\r\n以及偶尔会出现的Time Limit Exceed(时间超限)，Presentation Error(格式错误)之类的错误\r\n当然错误类型在 **F.A.Qs** 界面中有详细介绍\r\n\r\n那么基本情况就是这样了，有问题的同学呢可以在下面留言或者直接询问老师和学长学姐'),
(4, '2017哈尔滨CCPC', 'jnxxhzz', 1508898404, 1510301806, 3, '2017 哈尔滨 CCPC', '2017-10-25/9406ad24608728244ce9e14baf885017.jpg', '2017-10-25/9406ad24608728244ce9e14baf885017_thumb.jpg', 0, 46, 5, '2017哈尔滨CCPC区域赛总结 &lt;旅游赛&gt;.....', '算是和队友组队后的第一场正式比赛了...\r\n\r\n10.20周五傍晚到的哈尔滨..\r\n一出火车就闻到空气中一股奇怪的气味，空气质量很差，决定到哈尔滨再买口罩真是个错误的决定...\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/fa3fc9be5be5f9bd866eee46a7178a03.jpg)\r\n\r\n先去宾馆扔了包..扔完包去学校报到顺便蹭晚饭，因为据说午饭大多数学校都没有去吃..导致食堂经理发飙说浪费食物..负责老师被怼了之后于是表示晚饭报了不来的统统不给颁奖hhhh\r\n作为一个报了晚饭的队伍那还是得去一趟的hh毕竟浪费食物是不对滴\r\n然后就见证了一下别人家的食堂......\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/IMG_2142.jpg)\r\n\r\n------------\r\n10.21周六\r\n哈尔滨的早上天亮的真的早，六点半不到太阳就直射进我眼睛叫我起床...\r\n不过不得不说天气不错，跟前一天完全不一样..\r\n然后收拾收拾起床去蹭早饭，不得不说东北的食堂就是客气...量超大...还有免费的小菜，说实话我能在这个学校不花钱活下去..\r\n\r\n下午 \r\n开幕式+技术讲座\r\n每次听技术讲座就感觉自己超级弱，什么都不会...专业名词啥啥啥的..好多听都没听过,有些听过的也只是单纯的..听过~\r\n反正也不是第一次知道自己是只什么炫酷的技术都不会的蒟蒻了...\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/4ab4cbb93eec9a4a9cbb7989d83b526b.jpg)\r\n\r\n热身赛\r\n就正常做...发挥也还可以，除了莫名奇妙wa过两发其他都是小事，然后没看完的题目回宾馆补了一发发现是特别水的暴力,难度全在读题..\r\n\r\n------------\r\n10.22周日\r\n天气依旧不错...太阳大爷依旧六点半不到叫我起床...\r\n正赛\r\n一开始随便选中一个I，读了一发感觉可以做，仔细算了一波发现题意很好理解，要算也好算，在想要不要高精度除法搞一发或者java硬来一下试试...然后旁边队友看的A，B也都没什么思路，想说要不搞一发？然后发现精度问题...吃不动的精度..然后看了一眼榜单，想说签到题明显是F，都快二十分钟了，再不做F题相当于吃一发wa，然后开始看F...\r\nF的确水题，两分钟读题，随便模拟两遍就发现隔着放直接就是答案...5min1Y还是可以的..\r\n然后继续考虑做I还是A还是B，发现榜单上H题明显通过人数比较多，于是开始看H，做法也挺容易想出来的..然后十几分钟就交了，吃发wa，回过头来继续算，发现有细节问题，然后重新考虑了一下，继续交，又吃一发wa，于是三个人组团开始怀疑人生，卡了一个多小时之后...发现10w×10w求和int吃不下...幸好我眼神好..\r\n然后剩下三个钟头搞A和B...结果卡到死...\r\n中途其实想搞一发M的..几何题..但是我对自己的数学水平不抱任何希望...就算了，欢声笑语打出gg...铜牌滚粗\r\n\r\n10.23周一\r\n比赛结束..买不到周日的票就只有周一的票了..权当旅游了..毕竟第一次来那么北的地方..\r\n索菲亚教堂..\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/IMG_2201.jpg)\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/IMG_2204.jpg)\r\n\r\n松花江&amp;&amp;中央大街\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/IMG_2189.jpg)\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/IMG_2191.jpg)\r\n\r\n还有一个非常有情怀的商场...以及爪子非常稳的娃娃机...\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/2d3bc527d3591d13d300c18300a92e7d.jpg)\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/50d7608b99a2580cf3147bb72564424d.jpg)\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-25/1418e5b4dfeaf177ec6e169735b41e5b.jpg)'),
(5, '2017西安ICPC', 'jnxxhzz', 1509374486, 1510301843, 3, '2017 西安 ICPC', '2017-10-30/afa092a048900d989926d4a92fdd96e4.png', '2017-10-30/afa092a048900d989926d4a92fdd96e4_thumb.png', 0, 47, 3, '2017国际大学生逃生演习大赛西安赛区...总结', '今年第二场正式比赛了，跟我两个队友的第一场ACM-ICPC线下赛...\r\n\r\n10.28\r\n跟队友以及三个学长一起到了西安...继上次邀请赛之后第二次到西安了,也是第二次去西工大长安校区,下车在我的推荐下又吃了一次火车站附近的同一家肉夹馍店...然后踏上了49站公交车的不归路\r\n据子杨学长说,上车之后售票员就表示这班车到不了西工大...然而除了子扬学长我们统统没听懂,迷迷糊糊的付了钱就坐着..坐到电子科技大学表示说我们到了，然后交涉了半天发现她理解错了我们的目的地,然后补了钱继续..又过了一会在离西工大10站的地方让我们下车...没错..被赶下了车,欢声笑语打出gg，然后两辆滴滴到了学校，幸好打电话订的宾馆没有问题，离学校也只有五分钟路程...然后按照我上半年来比赛的路开始去报道，结果北门门卫表示毫不知情自己学校办了比赛...再次gg，又走到上次报到处，就光看见房间上面标着个“八百米展厅”...又一次gg，然后迷路了，发现来比赛，一没有领队群,二没有收到任何消息...悲桑..讲道理我们单独一个队出门都不会出这种问,两个队就出现了一丝尴尬...然后通过杰哥获得了道具《西安赛区参赛指南》..救命的道具..然后按照志愿者的指路发现，如果我们从东门进来,进门就是赛场...再次gg\r\n\r\n------------\r\n\r\n10.29\r\n\r\n在西安上学的家里小朋友来找我玩...说实话肯定是冲着我的手机来的，拿着手机玩了一天..然后蹭了我们两顿饭，不过有一个多出来的人能帮我们拍个需要拍的视频和照片还是不错的...\r\n----热身赛\r\n第一题wa了两发，然后一个钟头过第二题，剩下一个钟头第三题..有点复杂的线段树？然后作为打了这么多年比赛的人...大胆猜测,表示这特喵可能是个测压力的题目..交发暴力万一过了呢？队友表示不信...然后拖到最后十分钟没碰过键盘..然后打算交发暴力就走了，不出意外的T了\r\n场外大佬表示，还真是个测压力的题..题目名字就叫“npu device”测评测机...只要交的早..暴力就都是过的，最后因为大佬们开始测评测机各种性能了所以暴力是没办法过的...\r\n\r\n-----\r\n10.30\r\n\r\n----正赛\r\n上来先给了每题时限..D题居然有25s..怎么猜都是个超级大模拟之类的鬼东西...然后各种大佬开始猜测，进门的时候只看见了黑色一血气球看来签到题就是黑球E了\r\n开场果断不听大佬..看个鬼的E，4min就发现B是个水题，就是怂了一下以为要套个什么算法..稍微理一下发现就排个序解决问题...然后小队友手误wa两发..倒是无所谓\r\n继续看题目，开始跟榜做，一道看似是博弈的计算题....结果各种计算各种预处理...算到最后发现这玩意儿不是公平的么...是公平的那为毛不能直接比一比...随便验证俩还真没错...于是三行代码一发n/(n+m)1Y过了...\r\n然后继续跟榜，跟榜做G和H，H线段树段更新...队友手生了敲不出来..翻模板发现没带基础模板..继续gg..然后花了半个小时重新理一遍思路，换个思路1Y，然后队友开始怼g，我不喜欢算这种东西开始看别的，算了一发J，队友开始敲代码，J的验证没办法...手算81×82×...95/5!9+7根本吃不消..于是算出几个思路开始等电脑验证答案...第一发验证发现没有正确答案,然后队友继续G\r\n直到封榜，队友G思路断了，于是用电脑帮我验证几个答案..验证出常数之后10分钟直接O(Tn^4)暴力1Y..就是测试数据太特喵长了...500位0和1打错就全部GG...\r\n直到最后也没有过G，又一次四题铜牌滚粗...\r\n虽然又是铜牌不过也还好了...至少今年实验室出门都拿了东西回来~\r\n\r\n------\r\n\r\n\r\n最后...来看一看别人家的大学...\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-10/ad4d6078004678bc9cc2bc80cbcc7437.jpg)\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-10/8e09a69877297459628cc6bf6769e7fe.jpg)\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-30/a189247971a2c85805a4259fbc49eaba.jpg)\r\n\r\n\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-10-30/3d52f32d057eb382f06a0a12de8bfec5.jpg)'),
(6, '博客更新日志', 'jnxxhzz', 1509711506, 1511435857, 1, '博客 更新 日志', '2017-11-03/ec5c5d161335df3d9726bb29131b423a.JPG', '2017-11-03/ec5c5d161335df3d9726bb29131b423a_thumb.JPG', 0, 28, 4, '博客更新日志', '[TOC]\r\n\r\n### 2017.10.17\r\n&gt;个人博客测试上线，暂时只能使用ip地址访问\r\n1.留言功能及评论功能待补全，暂时只有留言框，用户名栏不显示\r\n\r\n### 2017.11.1\r\n&gt;个人博客正式上线，可以用blog.jnxxhzz.com进行访问\r\n1.补全留言及评论功能，暂时不添加注册用户功能，用户名长度≥6位即可留言，同时测试表情包功能\r\n2.更新了tag标签栏，将随机生成矩形随机颜色框更新为动态标签球，本地测试达到预期效果\r\n\r\n### 2017.11.3\r\n&gt; 在某个学姐的帮助下修复了首页文章排序不是置顶优先的问题\r\n1.首页重新修改，幻灯片播放以及首页文章显示现在固定为3篇，置顶优先\r\n2.更新了用户名的问题，包含中文的用户名长度需≥3，不包含中文的用户名长度需≥6\r\n3.压缩了一些近期不需要修改的文件，优化访问速度，本人测试优化程度一般\r\n\r\n### 2017.11.9\r\n&gt; 重新解析域名，修改了一下header.php，重写了标题头以及图标，服务器中重新切换回80端口进行访问，现在可以用一级域名 www.jnxxhzz.com  进行访问，同时二级域名 blog.jnxxhzz.com 一样可以访问，一级域名显示title以及图标，二级域名无法显示，这个问题个人无法解决..\r\n\r\n### 2017.11.10\r\n&gt; 自己没有自己看自己的博客...修改端口后所有图片链接全部失效，现在重新修改了图片路径，并且解决了之前最大只能上传2M大小图片的问题，查了好久..都开始以为自己写了个加代码了,最后发现是php.ini中只修改了 post_max_size ,没有修改 upload_max_filesize ，现在所有图片上传限制为 10000 × 10000 像素 6MB\r\n并且存在一个问题暂时没有解决，发现缓存不会清空，设置了2h删除缓存并没有成功执行，暂时没有找到原因\r\n\r\n### 2017.11.23\r\n&gt;第一次在这个博客更新题解，发现editor.md的code-block内无视多个空格,也就是white-space被固定为nowrap属性，手动修改为pre-wrap没有效果...测试了大半天发现editor.md的css库和uikit的css库部分冲突导致white-space属性固定为nowrap,直接修改了uikit的css库后可以正常显示空格，查询了uikit的所有使用过while-space属性的内容后基本没有大问题，若后来出现问题可能会选择重写uikit和editor.md中的某个css库'),
(7, '手把手教你做一个自己的chrome扩展程序', 'jnxxhzz', 1510735123, 1512722736, 8, 'chrome 扩展程序 小玩具', '2017-11-15/72e4df3f76b9fd98f9d9b54d91510e15.jpg', '2017-11-15/72e4df3f76b9fd98f9d9b54d91510e15_thumb.jpg', 0, 33, 2, '最近有几个人问我的浏览器扩展界面...所以写个教程，就算不懂html没关系，一样可以做一个看起来很好看的扩展界面', '###[目录]\r\n[TOC]\r\n\r\n~~&gt;暂时博客还没有增加下载文件功能，之后会把文件上传到github上提供下载，最近如果想要文件的同学请QQ私聊我~~\r\n&gt;https://github.com/jnxxhzz/chrome- 文件放在这里\r\n\r\n### first.效果\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/7e278a5b117bbc4b29c9cd1c8ea317fd.jpg)\r\n\r\n不上图的都是废话...具体效果如图\r\n\r\n&gt;左上角的时钟呢，是不需要修改的，看起来像雪花的效果，其实是js库中的粒子效果，也不需要修改\r\n那么关键是可修改的内容\r\n1.时钟下方的六个网页跳转框，也可以认为是收藏夹框...可以修改内容，修改跳转地址（也就是点击后会进入的网页），也可以移动位置\r\n2.右上部分的所有字，也可以修改\r\n3.背景图片修改\r\n\r\n### 1.收藏夹修改\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/fd7b0b15999ff376089261e54d628ce6.png)\r\n用记事本或者其他编辑器，打开XX.html这个文件\r\n接下来会看到很多你不认识的代码...当然认识最好\r\n当然~不认识没有关系，我已经在每个可以修改的地方加上了注释\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/fad9e669bc16225eaced89e41ad961e3.png)\r\n\r\n####(1).鼠标移动到收藏夹上的动作效果\r\n动作效果设置成了会变长一点点，这个变长的长度可以在这里进行修改\r\n只要修改这个160px的数值就可以做到修改变成的长度，只要把160换成其他数字即可，具体效果可以修改了之后关掉编辑器保存，直接打开这个XX.html网页查看\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/23bdbfe94a6728249c787775950788d3.png)\r\n\r\n####(2).收藏夹框\r\n在这部分我们会看到很长的四行代码，我在这里分割开了每个位置的收藏夹框，可修改的内容我也在后面用注释写清楚了，在第一行内有top和left属性，这两个属性后的数值跟上面的数值一样，只要把数字修改掉，就能看到这些收藏夹框进行移动，当然你修改哪个框内的位置，移动的就是哪个框，总共存在6个框，左上右上，左中右中，左下右下。\r\n**top**属性是离界面顶部的距离\r\n**left**属性是离界面左边的距离，记得不要把px这两个字母删掉~\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/70fb86b9d634f91f5c13ff29686e6653.png)\r\n具体效果修改数字后保存，直接打开网页就可以看到\r\n所以只要修改这两个数值，就可以对这些小框进行移动，放到自己想要的位置啦~\r\n那么其他的也如同注释里写的一样，比如第一个左上收藏框，我们可以看到这里写的是Bilibili，那么我们可以通过修改**Value**后面双引号内的内容，就可以修改这个框里显示的字了~当然双引号记得不要删掉了\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/8ed936685814b68012db1da56c9a31da.png)\r\n那么跳转地址也是一样的，比如左上收藏框，我们只要修改**action**后双引号内的链接，就可以修改点击这个框后会跳转去的页面\r\n比如把 http://www.bilibili.com 改成 http://www.baidu.com\r\n那么点击左上的收藏框，就会跳转到百度界面啦\r\n\r\n那么当然，其他的五个收藏夹框，也是一样的~\r\n如果需要多增加几个收藏框呢，只要复制任意一个单独收藏框的五行代码，如上面的代码图，重新粘贴在我注释的\r\n&quot;**如果要增加收藏夹框，请粘贴在此行以上的空白处**&quot;\r\n这一行以上，就可以了~修改方式也跟上述一样\r\n\r\n####(3)百度搜索框功能\r\n这个功能我注释掉了，具体效果如图\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/c01a93d1cda0ebe5768434f35be7114e.png)\r\n这个空白的可输入内容的框，就跟百度界面的搜索框是一样的功能，输入完后回车，或者点击&quot;**GO**&quot;按钮，就可以跳转到搜索界面啦\r\n\r\n如果你想要增加这个功能\r\n那么就把下图中的注释删掉即可\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/fe61b66a430a2fe8508c16f70c032da0.png)\r\n具体需要删除的两行我也用中文写出来了，将两个**删除此行**所在的行全部删掉就可以啦，连同这四个字一起删掉~\r\n\r\n### 2.右上文字修改\r\n右上文字修改的文件，一样需要用记事本或者其他编辑器，打开assets/js/app.js文件，也就是下图中第一个文件\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/ee2b53a44d94ee03e55a440f9b2b8b66.png)\r\n打开这个文件后呢，又会看到一堆奇奇怪怪的数字，不用管它们，直接拉到最底部\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/a398b1ea18cb3284565861ae6175a7a1.png)\r\n\r\n这里呢也给出了注释，如果你不喜欢我设置的在11点之前输出good morning,11点~15点输出good afternoon，15点~19点输出good evening,19点到24点输出good night，那么你可以修改**if**内的数值，就是11,15,19这三个数值，可以修改，比如你想要在10点到14点输出good afternoon，那你只要把11修改成10,15修改成14，其他也一样~\r\n\r\n另外呢，我写的输出字母为**Hello~**\r\n那么如果你想要输出成你的名字，比如我写的Helle~hz，直接在双引号内写入就可以啦\r\n\r\n### 3.背景图片修改\r\n同样的，在assets/img/文件夹内，有两张图片，只要你把你想要的背景图片复制到这个文件夹内，把名字修改为bg.jpg就可以啦，.jpg是后缀名，如果没有显示那么在工具里设置一下显示就可以了~只支持.jpg图片哦\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/186f3bd6af3c5b8b3ce4a6bb62457826.png)\r\n\r\n-----\r\n好了，做完以上的东西后，只要打开这个XX.html就可以看到这个属于我们自己的界面了~\r\n那么接下来呢，我们需要把这个文件夹做成chrome可以加载的扩展程序，这个命令文件我已经写好了，就是目录下的XX.pem，这个当然不用管\r\n我们打开chrome://extensions/ 扩展程序界面，勾选右上角的开发者模式\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/6c442205a77bf5c25e4eac9712fbcfbc.png)\r\n然后点击打包扩展程序，选中我们的目录文件夹也就是XX，当然文件夹放在那个盘内无所谓，你只要选中XX文件夹就可以了，记得是选中，不需要点进去哦，只要点击XX文件夹，然后点确定就可以了\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/cc261b86127c2ebf339ac62c329efa04.png)\r\n然后我们点击打包扩展程序，我们就会在XX文件夹外面得到两个文件XX.crx和XX.pem\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/b2cc0e7cae2ff5cabfbb061620258438.png)\r\n然后我们把这个XX.crx文件按住，直接按照箭头拖进扩展程序页面中，就会看到添加提示\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/e3d344aac212ae3483cc9e570c411d0f.jpg)\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-11-15/99d9fa331e98093b9c8dc09976f91e75.png)\r\n在添加扩展程序之后，我们再新建一个页面，是不是发现现在新建页面已经是自己这个界面了呢？\r\n\r\n---\r\n### 4.添加白名单\r\n在新版的chrome中，chrome会自动屏蔽第三方扩展程序，也就是我们自己加载的扩展程序，那么我们就需要把这个界面设置进白名单了\r\n按照以下步骤就可以实现了~\r\nchrome.adm文件我也已经放在了XX目录下~\r\nhttp://blog.csdn.net/jnxxhzz/article/details/78542360\r\n\r\n那么以上，就是做一个自己的扩展界面的所有步骤了，是不是挺简单的呢hhh就算不会html也没有问题。'),
(8, 'hdu6225—Little Boxes', 'jnxxhzz', 1511332746, 1511434883, 5, 'hdu ACM', '2017-11-22/d74ce781945539ba74e48ca61c3531cf.png', '2017-11-22/d74ce781945539ba74e48ca61c3531cf_thumb.png', 0, 18, 2, 'hdu6225', 'Little Boxes\r\n\r\nTime Limit: 2000/1000 MS (Java/Others)    \r\nMemory Limit: 262144/262144 K (Java/Others)\r\nTotal Submission(s): 997    Accepted Submission(s): 435\r\n\r\n\r\n### Problem Description\r\nLittle boxes on the hillside.\r\nLittle boxes made of ticky-tacky.\r\nLittle boxes.\r\nLittle boxes.\r\nLittle boxes all the same.\r\nThere are a green boxes, and b pink boxes.\r\nAnd c blue boxes and d yellow boxes.\r\nAnd they are all made out of ticky-tacky.\r\nAnd they all look just the same.\r\n \r\n\r\n### Input\r\nThe input has several test cases. The first line contains the integer t (1 ≤ t ≤ 10) which is the total number of test cases.\r\nFor each test case, a line contains four non-negative integers a, b, c and d where a, b, c, d ≤ 2^62, indicating the numbers of green boxes, pink boxes, blue boxes and yellow boxes.\r\n \r\n\r\n### Output\r\nFor each test case, output a line with the total number of boxes.\r\n \r\n### Sample Input\r\n4\r\n1 2 3 4\r\n0 0 0 0\r\n1 0 0 0\r\n111 222 333 404\r\n \r\n\r\n### Sample Output\r\n10\r\n0\r\n1\r\n1070\r\n \r\n\r\n### SourceSource\r\n2017ACM/ICPC亚洲区沈阳站-重现赛（感谢东北大学）\r\n\r\n\r\n【分析】\r\njava5分钟解决的大数问题....C++就得敲个高精度了，题目出的很有意思..就是想欺负没仔细看清楚题目的人...4×2^62=2^64刚好long long不够大...\r\n【代码】\r\n    #include &lt;stdio.h&gt;\r\n    #include &lt;string.h&gt;\r\n    using namespace std;\r\n    int a[100000]={0};\r\n    char s[100000];\r\n    int lena;\r\n    void add()\r\n    {\r\n        int lens=strlen(s);\r\n        int len=lens;\r\n        a[0]=a[0]+s[lens-1]-48;\r\n        for (int i=1;i&lt;len;i++)\r\n        {\r\n            a[i]=a[i-1]/10+a[i]+s[lens-i-1]-48;\r\n            a[i-1]%=10;\r\n        }\r\n        while (a[len-1]&gt;9) a[len]+=a[len-1]/10,a[len-1]%=10,len++;\r\n        if (len&gt;lena) lena=len;\r\n    }\r\n   \r\n    int main()\r\n    { \r\n        int pp;scanf(&quot;%d&quot;,&amp;pp);\r\n        while (pp--)\r\n        {\r\n            lena=1;\r\n            memset(a,0,sizeof(a));\r\n            for (int i=0;i&lt;4;i++) \r\n            scanf(&quot;%s&quot;,s),add();\r\n            for (int i=lena-1;i&gt;=0;i--) printf(&quot;%d&quot;,a[i]);\r\n            puts(&quot;&quot;);\r\n        }\r\n        return 0;    \r\n    }'),
(9, '浙江中医药大学第十一届校赛题解', 'jnxxhzz', 1512886700, 1512959824, 4, '校赛 题解', '2017-12-10/2c11098ffb3c01bd15f0d5a311e3422c.png', '2017-12-10/2c11098ffb3c01bd15f0d5a311e3422c_thumb.png', 1, 1032, 25, '浙江中医药大学第十一届校赛题解', '[TOC]\r\n\r\n### Problem A 不存在的树\r\n分析：树链剖分模板题。。\r\n剖分后用线段树维护即可。\r\n```cpp\r\n#include &lt;bits/stdc++.h&gt;\r\nusing namespace std;\r\n#define pb push_back\r\n#define cl(a,b) memset(a,b,sizeof(a))\r\n#define lson t&lt;&lt;1,l,mid\r\n#define rson t&lt;&lt;1|1,mid+1,r\r\n#define seglen(t) (node[(t)].r-node[(t)].l+1)\r\ntypedef long long LL;\r\nconst int INF = 0x3f3f3f3f;\r\nconst int maxn = 50000 + 10;\r\nint head[maxn],cnt;\r\nstruct Edge{\r\n    int to,next;\r\n}edge[maxn&lt;&lt;1];\r\nvoid add(int u,int v)\r\n{\r\n    edge[cnt].to = v;\r\n    edge[cnt].next = head[u];\r\n    head[u] = cnt++;\r\n}\r\nint num;\r\nint val[maxn],siz[maxn],dep[maxn],son[maxn];\r\nint top[maxn],tid[maxn],Rank[maxn],fa[maxn];\r\nvoid init()\r\n{\r\n    cl(head,-1);cl(son,-1);\r\n    cnt = num = 0;\r\n}\r\n///树链剖分部分\r\nvoid dfs1(int u,int father,int d)\r\n{\r\n    dep[u] = d;\r\n    fa[u] = father;\r\n    siz[u] = 1;\r\n    for(int i = head[u]; ~i; i = edge[i].next)\r\n    {\r\n        int v = edge[i].to;\r\n        if(v != father)\r\n        {\r\n            dfs1(v,u,d+1);\r\n            siz[u] += siz[v];\r\n            if(son[u] == -1 || siz[v] &gt; siz[son[u]])\r\n                son[u] = v;\r\n        }\r\n    }\r\n}\r\n \r\nvoid dfs2(int u,int tp)\r\n{\r\n    top[u] = tp;\r\n    tid[u] = ++num;\r\n    Rank[tid[u]] = u;\r\n    if(son[u] == -1) return;\r\n    dfs2(son[u],tp);\r\n    for(int i = head[u]; ~i; i = edge[i].next)\r\n    {\r\n        int v = edge[i].to;\r\n        if(v != son[u] &amp;&amp; v != fa[u])\r\n            dfs2(v,v);\r\n    }\r\n}\r\n///线段树部分\r\nstruct Node{\r\n    int l,r,sum,mx;\r\n}node[maxn&lt;&lt;2];\r\nvoid pushup(int t)\r\n{\r\n    node[t].mx = max(node[t&lt;&lt;1].mx ,node[t&lt;&lt;1|1].mx);\r\n    node[t].sum = node[t&lt;&lt;1].sum + node[t&lt;&lt;1|1].sum;\r\n}\r\nvoid build(int t,int l,int r)\r\n{\r\n    node[t].l = l;\r\n    node[t].r = r;\r\n    if(l == r){\r\n        node[t].mx = node[t].sum = val[Rank[l]];\r\n        return ;\r\n    }\r\n    int mid = (l + r) &gt;&gt; 1;\r\n    build(lson);\r\n    build(rson);\r\n    pushup(t);\r\n}\r\nvoid update(int t,int u,int v)\r\n{\r\n    if(node[t].l == node[t].r &amp;&amp; node[t].l == u){\r\n        node[t].sum = v;\r\n        node[t].mx = v;\r\n        return ;\r\n    }\r\n    int mid = (node[t].l + node[t].r) &gt;&gt; 1;\r\n    if(u &lt;= mid)update(t&lt;&lt;1,u,v);\r\n    else update(t&lt;&lt;1|1,u,v);\r\n    pushup(t);\r\n}\r\nint querySum(int t,int l,int r)\r\n{\r\n    if(node[t].l &gt;= l &amp;&amp; node[t].r &lt;= r ){\r\n        return node[t].sum;\r\n    }\r\n    int mid = (node[t].l + node[t].r) &gt;&gt; 1;\r\n    int ret = 0;\r\n    if(l &lt;= mid)ret += querySum(t&lt;&lt;1,l,r);\r\n    if(r &gt; mid) ret += querySum(t&lt;&lt;1|1,l,r);\r\n    pushup(t);\r\n    return ret;\r\n}\r\nint queryMax(int t,int l,int r)\r\n{\r\n    if(l &lt;= node[t].l &amp;&amp; node[t].r &lt;= r){\r\n        return node[t].mx;\r\n    }\r\n    int mid = (node[t].l + node[t].r) &gt;&gt; 1;\r\n    int ret = -INF;\r\n    if(l &lt;= mid)ret = max(ret,queryMax(t&lt;&lt;1,l,r));\r\n    if(r &gt; mid)ret = max(ret,queryMax(t&lt;&lt;1|1,l,r));\r\n    pushup(t);\r\n    return ret;\r\n}\r\nint solveMax(int x,int y)\r\n{\r\n    int mx = -INF;\r\n    while(top[x] != top[y]){\r\n        if(dep[top[x]] &lt; dep[top[y]])swap(x,y);\r\n        mx = max(mx,queryMax(1,tid[top[x]],tid[x]));\r\n        x = fa[top[x]];\r\n    }\r\n    if(dep[x] &gt; dep[y])swap(x,y);\r\n    return max(mx,queryMax(1,tid[x],tid[y]));\r\n}\r\nint solveSum(int x,int y)\r\n{\r\n    int sum = 0;\r\n    while(top[x] != top[y]){\r\n        if(dep[top[x]] &lt; dep[top[y]])swap(x,y);\r\n        sum += querySum(1,tid[top[x]],tid[x]);\r\n        x = fa[top[x]];\r\n    }\r\n    if(dep[x] &gt; dep[y])swap(x,y);\r\n    return sum + querySum(1,tid[x],tid[y]);\r\n}\r\nint main()\r\n{\r\n    int ope;\r\n    int n,Q;\r\n    while(~scanf(&quot;%d%d&quot;,&amp;n,&amp;Q)){\r\n        init();\r\n        for( int i = 1; i &lt;= n; i++ ){\r\n            scanf(&quot;%d&quot;,val+i);\r\n        }\r\n        for( int i = 0; i &lt; n-1; i++ ){\r\n            int u,v;\r\n            scanf(&quot;%d%d&quot;,&amp;u,&amp;v);\r\n            add(u,v);\r\n            add(v,u);\r\n        }\r\n         \r\n        dfs1(1,0,0);\r\n        dfs2(1,1);\r\n        build(1,1,n);\r\n        int u,v;\r\n        while(Q--){\r\n            scanf(&quot;%d%d%d&quot;,&amp;ope,&amp;u,&amp;v);\r\n            if(ope == 0){\r\n                printf(&quot;%d\\n&quot;,solveMax(u,v));\r\n            }\r\n            else if(ope == 1){\r\n                printf(&quot;%d\\n&quot;,solveSum(u,v));\r\n            }\r\n            else {\r\n                update(1,tid[u],v);\r\n            }\r\n        }\r\n    }\r\n    return 0;\r\n}\r\n \r\n```\r\n### Problem B 一生之敌\r\n分析：题目就是求存在(a,b)满足(b^2 = 2 × a × (a + 1)^2)的(b)。  \r\n两边开根号,得:\r\nb = (a+1) × sqrt{2a}\r\n令(a = 2n^2),得:\r\nb = 2n (2n^2+1) = 4n^3 + 2n\r\n只要预处理一下(b),然后二分查询就行了。\r\n注意要用unsigned long long处理数据。\r\n```cpp\r\n//#define local\r\n#include &lt;bits/stdc++.h&gt;\r\nusing namespace std;\r\ntypedef long long LL;\r\ntypedef unsigned long long ULL;\r\nconst int maxn = 1400000 + 10;\r\nULL f[maxn];\r\nvoid init()\r\n{\r\n  for (int i = 0; i &lt; maxn; i++) {\r\n    f[i] = 4ull * i * i * i + 2ull * i;\r\n  }\r\n}\r\nint main()\r\n{\r\n#ifdef local\r\n  freopen(&quot;test0.in&quot;,&quot;r&quot;,stdin);\r\n  freopen(&quot;test0.out&quot;,&quot;w&quot;,stdout);\r\n  clock_t start_time=clock();\r\n#endif\r\n  init();\r\n  int T;scanf(&quot;%d&quot;,&amp;T);\r\n  while(T--) {\r\n    ULL n;scanf(&quot;%llu&quot;,&amp;n);\r\n    assert(0 &lt;= n &amp;&amp; n &lt;= 10000000000000000000ull);\r\n    LL ans = lower_bound(f,f+maxn,n) - f;\r\n    printf(&quot;%llu\\n&quot;,f[ans]);\r\n  }\r\n#ifdef local\r\n  clock_t end_time=clock();\r\n  double run_time = (double)(end_time - start_time) / CLOCKS_PER_SEC * 1000;\r\n  cerr&lt;&lt;&quot;Running time is : &quot;&lt;&lt;run_time&lt;&lt;&quot;ms.&quot;&lt;&lt;endl;\r\n#endif\r\n  return 0;\r\n}\r\n \r\n```\r\n### Problem C 寻找ZCMU\r\n分析：只要保存(z,c,m,u)四个字符出现的位置，枚举(z)字符的位置，其余三个字符的位置可以用二分查找。\r\n```cpp\r\n//#define local\r\n#include &lt;bits/stdc++.h&gt;\r\nusing namespace std;\r\n#define pb push_back\r\n#define clr clear()\r\nconst int INF = 0x3f3f3f3f;\r\nconst int maxn = 100000 + 10;\r\nchar str[maxn];\r\nvector&lt;int&gt;z,c,m,u;\r\nint main()\r\n{\r\n#ifdef local\r\n  freopen(&quot;sample.in&quot;,&quot;r&quot;,stdin);\r\n  freopen(&quot;sample.out&quot;,&quot;w&quot;,stdout);\r\n  clock_t start_time=clock();\r\n#endif\r\n  while(~scanf(&quot;%s&quot;,str)) {\r\n    z.clr;c.clr;m.clr;u.clr;\r\n    for (int i = 0; str[i]; i++) {\r\n      if(str[i] == ''z'') z.pb(i);\r\n      if(str[i] == ''c'') c.pb(i);\r\n      if(str[i] == ''m'') m.pb(i);\r\n      if(str[i] == ''u'') u.pb(i);\r\n    }\r\n    int flag = 0,ans = INF;\r\n    for (int i = 0; i &lt; (int)z.size(); i++) {\r\n      int p1 = upper_bound(c.begin(),c.end(),z[i]) - c.begin();\r\n      if(p1 == c.size())continue;\r\n      int p2 = upper_bound(m.begin(),m.end(),c[p1]) - m.begin();\r\n      if(p2 == m.size())continue;\r\n      int p3 = upper_bound(u.begin(),u.end(),m[p2]) - u.begin();\r\n      if(p3 == u.size())continue;\r\n      flag = 1;\r\n      //cout&lt;&lt;&quot;p1 = &quot;&lt;&lt;p1&lt;&lt;&quot;p2 = &quot;&lt;&lt;p2&lt;&lt;&quot;p3 = &quot;&lt;&lt;p3&lt;&lt;endl;\r\n      ans = min(ans,u[p3] - z[i] - 3);\r\n    }\r\n    printf(&quot;%d\\n&quot;,flag ? ans : -1);\r\n  }\r\n#ifdef local\r\n  clock_t end_time=clock();\r\n  double run_time = (double)(end_time - start_time) / CLOCKS_PER_SEC * 1000;\r\n  cerr&lt;&lt;&quot;Running time is : &quot;&lt;&lt;run_time&lt;&lt;&quot;ms.&quot;&lt;&lt;endl;\r\n#endif\r\n  return 0;\r\n}\r\n```\r\n### Problem D cc的神奇背包\r\n分析:可扩充背包，本身是个贪心，需要按a&lt;=b和a&gt;b的分类后排序，那么显然a &lt;= b的物品一定是从a从小到大排序直接放进去的，因为每放一个背包体积都会扩大，那么对另外a&gt;b的物品，显然这个时候背包的体积一直在瞎讲，那么肯定要从体积大的开始放，判断能不能全放下就可以了\r\n```cpp\r\n#include &lt;vector&gt;\r\n#include &lt;stdio.h&gt;\r\n#include &lt;string.h&gt;\r\n#include &lt;iostream&gt;\r\n#include &lt;algorithm&gt;\r\nusing namespace std;\r\ninline void read(int &amp;x)\r\n{\r\n    x = 0; int c = getchar();\r\n    while(c &lt; ''0'' || c &gt; ''9'') c = getchar();\r\n    while(c &gt;= ''0'' &amp;&amp; c &lt;= ''9'') x = x * 10 + c - 48, c = getchar();\r\n}\r\nint n, T, v;\r\nlong long h;\r\nstruct XX{ \r\n    int a, b;\r\n};\r\nvector&lt;XX&gt; A,B;\r\nbool cp1(const XX &amp;x, const XX &amp;y) {return x.a &lt; y.a;}\r\nbool cp2(const XX &amp;x, const XX &amp;y) {return x.b &gt; y.b;}\r\nbool Jud()\r\n{\r\n    for(int i = 0; i &lt; A.size(); ++i)\r\n    {\r\n        if(h &lt; A[i].a) return false;\r\n        h += A[i].b - A[i].a;\r\n    }\r\n    for(int i = 0; i &lt; B.size(); ++i)\r\n    {\r\n        if(h &lt; B[i].a) return false;\r\n        h += B[i].b - B[i].a;\r\n    }\r\n    return true;\r\n}\r\nint main()\r\n{\r\n    //freopen(&quot;4.in&quot;,&quot;r&quot;,stdin);  \r\n    //freopen(&quot;4.out&quot;,&quot;w&quot;,stdout);  \r\n    read(T);\r\n    while(T--)\r\n    {\r\n        A.clear(), B.clear();\r\n        read(n), read(v), h = v;\r\n        for(int i = 0; i &lt; n; ++i)\r\n        {\r\n            XX x; read(x.a), read(x.b);\r\n            if(x.a &lt; x.b) \r\n                A.push_back(x);\r\n            else\r\n                B.push_back(x);\r\n        }\r\n        sort(A.begin(), A.end(), cp1);\r\n        sort(B.begin(), B.end(), cp2);\r\n        puts(Jud() ? &quot;yes&quot;: &quot;no&quot;);\r\n    }\r\n     return 0;\r\n}\r\n```\r\n### Problem E Pizza\r\n分析:把一块质量为n的pizza分成等整数质量的多块，问获得最小的卡路里，那么显然最小的分块质量就是1，那么答案就是1×k，数据范围刚好比int大，使用long long即可\r\n```cpp\r\n#include &lt;stdio.h&gt;\r\nint main()\r\n{\r\n    // freopen(&quot;4.in&quot;,&quot;r&quot;,stdin);  \r\n    // freopen(&quot;4.out&quot;,&quot;w&quot;,stdout);  \r\n    long long n,m;\r\n    int pp;scanf(&quot;%d&quot;,&amp;pp);\r\n    while (pp--)\r\n    {\r\n        scanf(&quot;%lld%lld&quot;,&amp;n,&amp;m);\r\n        printf(&quot;%lld\\n&quot;,m);\r\n    }\r\n    return 0;\r\n}\r\n```\r\n### Problem F 开心的cc\r\n分析：给出一串1和0，形成一个圈，问有多少个位置可以使得以这个点为起点，前缀和保证1的数量比0多\r\n很有意思的证明题.....证明结果就是把0当成-1求个和...和就是答案\r\n用反证法可以证明，在1和0个数一样的圈内比如 1 0 ，答案是0，那么对当前多出一个1的话，答案就会变成1，以此类推...\r\n```cpp\r\n#include &lt;stdio.h&gt;  \r\nint main()  \r\n{  \r\n//  freopen(&quot;1.in&quot;,&quot;r&quot;,stdin);  \r\n//  freopen(&quot;1.out&quot;,&quot;w&quot;,stdout);  \r\n    int pp;scanf(&quot;%d&quot;,&amp;pp);  \r\n    while (pp--)   \r\n    {  \r\n        int n;scanf(&quot;%d&quot;,&amp;n);  \r\n        int ans=0;  \r\n        for (int i=0;i&lt;n;i++)  \r\n        {  \r\n            int x;scanf(&quot;%d&quot;,&amp;x);  \r\n            if (x==0) ans--;\r\n            else ans++;\r\n        }   \r\n        if (ans&gt;0) printf(&quot;%d\\n&quot;,ans);  \r\n        else printf(&quot;0\\n&quot;);  \r\n    }  \r\n}  \r\n```\r\n### Problem G 特产\r\n分析：读取n,m  输出m-n\r\n```cpp\r\n#include &lt;iostream&gt;\r\n#include &lt;cstdio&gt;\r\n \r\nusing namespace std;\r\n \r\nint main()\r\n{\r\n    int T;\r\n    double a,b;\r\n    cin &gt;&gt; T;\r\n    while (T--){\r\n        scanf(&quot;%lf%lf&quot;, &amp;a, &amp;b);\r\n        printf(&quot;%.0f\\n&quot;, b - a);\r\n    }\r\n    return 0;\r\n}\r\n \r\n```\r\n### Problem H 剪纸\r\n分析:给出一张方格纸，用一条线分成两部分，且这两部分要相等，问有多少种方案，数据只到9,直接算也可以，dfs也可以，没有卡时间\r\n```cpp\r\n#include &lt;algorithm&gt;\r\n#include &lt;string.h&gt;\r\n#include &lt;iostream&gt;\r\n#include &lt;stdio.h&gt;\r\n#include &lt;string&gt;\r\n#include &lt;vector&gt;\r\n#include &lt;queue&gt;\r\n#include &lt;map&gt;\r\n#include &lt;set&gt;\r\n#include &lt;ctime&gt;\r\nusing namespace std;\r\nint ans = 0;\r\nint mpt[20+1][20+1];\r\nint N;\r\nint dir[4][2] = {0,1,1,0,0,-1,-1,0};\r\nvoid dfs(int x,int y)\r\n{\r\n    if(x == 0 || y == 0 || x == N || y == N){\r\n        ans ++;\r\n        return;\r\n    }\r\n    for(int i = 0 ; i &lt; 4 ; i ++)\r\n    {\r\n        int tx = x + dir[i][0];\r\n        int ty = y + dir[i][1];\r\n        if(mpt[tx][ty])continue;\r\n        mpt[tx][ty] = 1;\r\n        mpt[N-tx][N-ty] = 1;\r\n        dfs(tx,ty);\r\n        mpt[tx][ty] = 0;\r\n        mpt[N-tx][N-ty] = 0;\r\n    }\r\n}\r\nint main()\r\n{\r\n    int pp;scanf(&quot;%d&quot;,&amp;pp);\r\n    while (pp--)\r\n    {\r\n        scanf(&quot;%d&quot;,&amp;N);\r\n  if (n%2) {puts(&quot;0&quot;);continue}\r\n        ans=0;\r\n        memset(mpt,0,sizeof(mpt));\r\n        mpt[N/2][N/2] = 1;\r\n        dfs(N/2,N/2);\r\n        printf(&quot;%d\\n&quot;,ans/4);\r\n    }\r\n   return 0;\r\n}\r\n```\r\n### Problem I Memory leak\r\n分析：大模拟题，留了个坑，不一定只有第一行是char定义\r\n```cpp\r\n#include&lt;cstdio&gt;\r\n#include&lt;cstring&gt;\r\n#include&lt;algorithm&gt;\r\n#include&lt;iostream&gt;\r\n#include&lt;string&gt;\r\n#include&lt;map&gt;\r\nusing namespace std;\r\nconst int maxn=1e5+7;\r\nstruct node{\r\n    string s;\r\n    string name;\r\n    int len;\r\n}e[maxn];\r\nmap&lt;string,int&gt;mp;\r\nchar str[maxn];\r\nint idx;\r\nint main(){\r\n    int t;\r\n    scanf(&quot;%d&quot;,&amp;t);\r\n    getchar();\r\n    idx=0;\r\n    while(gets(str)!=NULL){\r\n        if(strcmp(str,&quot;return 0;&quot;)==0){\r\n            t--;\r\n            if(t==0)break;\r\n            continue;\r\n        }\r\n        int len=strlen(str);\r\n        if(str[0]==''c''&amp;&amp;str[1]==''h''&amp;&amp;str[2]==''a''&amp;&amp;str[3]==''r''){\r\n            int i=5;\r\n            while(i&lt;len){\r\n                string ss=&quot;&quot;;\r\n                for(;str[i]!=''['';i++)ss+=str[i];\r\n                e[idx].name=ss;\r\n                mp[ss]=idx;\r\n                int x=0;\r\n                i++;\r\n                for(;str[i]!='']'';i++){\r\n                    x=x*10+str[i]-''0'';\r\n                }\r\n                e[idx].len=x;\r\n                i+=3;\r\n                idx++;\r\n            }\r\n        }else if(str[0]==''g''&amp;&amp;str[1]==''e''&amp;&amp;str[2]==''t''&amp;&amp;str[3]==''s''){\r\n            string ss=&quot;&quot;;\r\n            int i=5;\r\n            for(;str[i]!='' '';i++)ss+=str[i];\r\n            int x=mp[ss];\r\n            ss=&quot;&quot;;\r\n            i++;\r\n            for(;i&lt;len;i++)ss+=str[i];\r\n            e[x].s=ss;\r\n//            cout&lt;&lt;e[x].name&lt;&lt;&quot;end&quot;&lt;&lt;endl;\r\n//            cout&lt;&lt;e[x].s&lt;&lt;&quot;end&quot;&lt;&lt;endl;\r\n//            cout&lt;&lt;e[x].len&lt;&lt;endl;\r\n//            cout&lt;&lt;endl&lt;&lt;endl;\r\n        }else{\r\n            int i=5;\r\n            string ss=&quot;&quot;;\r\n            for(;i&lt;len;i++)ss+=str[i];\r\n            int x=mp[ss];\r\n            int lenn=e[x].s.size();\r\n            if(e[x].len&gt;lenn)cout&lt;&lt;e[x].s&lt;&lt;endl;\r\n            else{\r\n                while(x&lt;idx){\r\n                    lenn=e[x].s.size();\r\n//                    cout&lt;&lt;e[x].name&lt;&lt;&quot;:&quot;&lt;&lt;endl;\r\n//                    cout&lt;&lt;e[x].s.size()&lt;&lt;&quot; &quot;&lt;&lt;len&lt;&lt;endl;\r\n                    if(e[x].len&lt;=lenn){\r\n                        for(int i=0;i&lt;e[x].len;i++)printf(&quot;%c&quot;,e[x].s[i]);\r\n//                        cout&lt;&lt;endl;\r\n                    }else{\r\n                        cout&lt;&lt;e[x].s;\r\n                        break;\r\n                    }\r\n                    x++;\r\n                }\r\n                cout&lt;&lt;endl;\r\n            }\r\n        }\r\n    }\r\n    return 0;\r\n}\r\n```\r\n### Problem J 序列\r\n分析：如果没有(gcd(x,y) == 1)这个限制，那么我们可以直接把所有的(b\\_{a\\_y})统计进一个数组里，然后将所有的(a\\_{b\\_x})统计进答案就行了。\r\n有了这个限制，我们可以考虑容斥。\r\n就是我们把所有的解都累加进答案，然后去掉(gcd(x,y) != 1)的解。\r\n这里我们可以用莫比乌斯函数。\r\n关于莫比乌斯函数的定义。\r\n![](http://www.jnxxhzz.com/Public/Upload/2017-12-10/1bed72c8b56cae80ec7cd73d881c9327.png)\r\n(p\\_1,p\\_2,...,p\\_n)为素数。\r\n具体可参照wiki。\r\n接下来我们只要计算出(x,y)都为(i)的倍数时的答案，再与(u[i])相乘累加进答案就可以了。\r\n```cpp\r\n#include &lt;bits/stdc++.h&gt;\r\nusing namespace std;\r\n#define fin freopen(&quot;test10.in.txt&quot;,&quot;r&quot;,stdin)\r\n#define fout freopen(&quot;test10.out.txt&quot;,&quot;w&quot;,stdout)\r\n#define cl(a,b) memset(a,b,sizeof(a))\r\ntypedef long long LL;\r\nconst int maxn = 100000 + 10;\r\nbool check[maxn];\r\nint mu[maxn],prime[maxn];\r\nvoid Mobius()\r\n{\r\n    cl(check,false);\r\n    mu[1] = 1;\r\n    int tot = 0;\r\n    for( int i = 2; i &lt; maxn; i++ ){\r\n        if(!check[i]){\r\n            prime[tot++] = i;\r\n            mu[i] = -1;\r\n        }\r\n        for( int j = 0; j &lt; tot; j++ ){\r\n            if(i * prime[j] &gt;= maxn)break;\r\n            check[i*prime[j]] = true;\r\n            if(i % prime[j] == 0){\r\n                mu[i * prime[j]] = 0;\r\n                break;\r\n            }\r\n            else {\r\n                mu[i * prime[j]] = -mu[i];\r\n            }\r\n        }\r\n    }\r\n}\r\nint a[maxn],b[maxn],vis[maxn],n;\r\nLL cal(int t)\r\n{\r\n    LL ret = 0;\r\n    for( int i = t; i &lt;= n; i += t )vis[b[a[i]]]++;\r\n    for( int i = t; i &lt;= n; i += t )ret += vis[a[b[i]]];\r\n    for( int i = t; i &lt;= n; i += t )vis[b[a[i]]]--;\r\n    return ret;\r\n}\r\nint main()\r\n{\r\n    //fin,fout;\r\n    Mobius();\r\n    while(~scanf(&quot;%d&quot;,&amp;n)){\r\n        for( int i = 1; i &lt;= n; i++ ){\r\n            scanf(&quot;%d&quot;,a+i);\r\n            assert(a[i] &lt;= n &amp;&amp; a[i] &gt;= 1);\r\n        }\r\n        for( int i = 1; i &lt;= n; i++ ){\r\n            scanf(&quot;%d&quot;,b+i);\r\n            assert(b[i] &lt;= n &amp;&amp; b[i] &gt;= 1);\r\n        }\r\n        LL ans = 0;\r\n        for( int i = 1; i &lt;= n; i++ ){\r\n            ans += mu[i]*cal(i);\r\n        }\r\n        printf(&quot;%lld\\n&quot;,ans);\r\n    }\r\n    return 0;\r\n}\r\n \r\n```\r\n### Problem K 追求者\r\n分析:对于询问l~r，可以拆成1~l-1,1~r的询问。想要询问一个点到一些点的距离和，可以在重心树上直接跑。然后给出一个可持久化重心树，用与线段树类似的思路，维护当前区间的所有点数量 与到重心父亲的距离和，每加入一个节点只需要修改它在重心树上到root的距离。由于重心树深度是O(logn)，所以直接可持久化每次是O(Σ重心树上儿子数)，这显然是不优的。那么就考虑把这棵树重新建成一棵二叉树，之后的就简单了，只要注意一点，尽管转化为二叉树，重心树节点仍可以有3个儿子。可能需要RMQ O(1)求两点间距离。\r\n```cpp\r\n#include&lt;iostream&gt;  \r\n#include&lt;cstdio&gt;  \r\n#include&lt;cstring&gt;  \r\n#include&lt;algorithm&gt;  \r\n#define N 800005  \r\n#define M 15000005  \r\n#define ll long long  \r\nusing namespace std;  \r\n     \r\nint n,q,p,x,y,z,RT,w[N];  \r\nint to[N],len[N],nxt[N],fst[N],u[N],l=1;  \r\nint To[N],Len[N],Nxt[N],Fst[N],L;  \r\nint a[N],b[N],c[N][3],cnt,st[N],ed[N],Cnt;  \r\nint Mx[N],sz[N],fa[N];  \r\nint ly,e[N],lg[N],pos[N];  \r\nint rt[N],s[M][3],used[M],nd;  \r\n     \r\nll r[N][26],dep[N],f[M],g[M],ans;  \r\n     \r\nvoid link(int x,int y,int z)  \r\n{  \r\n    to[++l]=y;len[l]=z;nxt[l]=fst[x];fst[x]=l;  \r\n    to[++l]=x;len[l]=z;nxt[l]=fst[y];fst[y]=l;  \r\n}  \r\nvoid Link(int x,int y,int z)  \r\n{  \r\n    To[++L]=y;Len[L]=z;Nxt[L]=Fst[x];Fst[x]=L;  \r\n    To[++L]=x;Len[L]=z;Nxt[L]=Fst[y];Fst[y]=L;  \r\n}  \r\nvoid edg(int x,int l,int r)  \r\n{  \r\n    if (l==r)  \r\n    {  \r\n        link(x,a[l],b[l]);  \r\n        return;  \r\n    }  \r\n    int mid=l+r&gt;&gt;1,tmp=++cnt;  \r\n         \r\n    edg(tmp,l,mid);  \r\n    edg(tmp,mid+1,r);  \r\n    link(x,tmp,0);  \r\n}  \r\nvoid dfs(int x,int f)  \r\n{  \r\n    int t=0;  \r\n    for (int i=Fst[x];i;i=Nxt[i])  \r\n        if (To[i]!=f)  \r\n            a[++t]=To[i],b[t]=Len[i];  \r\n    if (t)  \r\n    {  \r\n        int mid=t+1&gt;&gt;1;   \r\n        edg(x,1,mid);  \r\n        if (t!=1) edg(x,mid+1,t);  \r\n    }  \r\n    for (int i=Fst[x];i;i=Nxt[i])  \r\n        if (To[i]!=f)  \r\n            dfs(To[i],x);  \r\n}  \r\nvoid Dfs(int x,int f)  \r\n{  \r\n    sz[x]=1;Mx[x]=0;  \r\n    for (int i=fst[x];i;i=nxt[i])  \r\n    {  \r\n        if (!u[i]&amp;&amp;to[i]!=f)  \r\n        {  \r\n            Dfs(to[i],x);  \r\n            sz[x]+=sz[to[i]];  \r\n            Mx[x]=max(Mx[x],sz[to[i]]);  \r\n        }  \r\n    }  \r\n}  \r\nvoid Get(int x,int f,int size,int &amp;G)  \r\n{  \r\n    if (max(Mx[G],size-sz[G])&gt;max(Mx[x],size-sz[x])) G=x;  \r\n    for (int i=fst[x];i;i=nxt[i])  \r\n        if (!u[i]&amp;&amp;to[i]!=f) Get(to[i],x,size,G);  \r\n     \r\n}  \r\nint build(int x)  \r\n{  \r\n    int G=x,sum=0;  \r\n    Dfs(x,0);  \r\n    if (sz[x]==1) return x;  \r\n    Get(x,0,sz[x],G);  \r\n    for (int i=fst[G];i;i=nxt[i])  \r\n        if (!u[i])  \r\n        {  \r\n            u[i]=u[i^1]=1;  \r\n            int t=build(to[i]);  \r\n            c[G][sum++]=t;  \r\n            fa[t]=G;  \r\n        }  \r\n    return G;  \r\n}  \r\nvoid DFS(int x,int f)  \r\n{  \r\n    r[pos[x]=++ly][0]=dep[x];  \r\n    for (int i=fst[x];i;i=nxt[i])  \r\n        if (to[i]!=f)  \r\n        {  \r\n            dep[to[i]]=dep[x]+len[i];  \r\n            DFS(to[i],x);  \r\n            r[++ly][0]=dep[x];  \r\n        }  \r\n}  \r\nvoid DFS(int x)  \r\n{  \r\n    st[x]=++Cnt;  \r\n    for (int i=0;i&lt;3;i++)  \r\n        if (c[x][i])  \r\n            DFS(c[x][i]);  \r\n    ed[x]=Cnt;  \r\n}  \r\nll dis(int x,int y)  \r\n{  \r\n    if (!x||!y) return 0;  \r\n    x=pos[x];y=pos[y];  \r\n    if (x&gt;y) swap(x,y);  \r\n    int t=lg[y-x+1];  \r\n    return r[x][0]+r[y][0]-2*min(r[x][t],r[y-e[t]+1][t]);  \r\n}  \r\n     \r\nvoid mdy(int x,int &amp;y,int p,int q)  \r\n{  \r\n    if (!y) y=++nd;  \r\n         \r\n    g[y]=g[x]+1;  \r\n    f[y]=f[x]+dis(fa[p],q);  \r\n    used[y]=used[x];  \r\n    if (p==q) used[y]=1;  \r\n    for (int i=0;i&lt;3;i++)  \r\n        if (c[p][i]&amp;&amp;st[q]&gt;=st[c[p][i]]&amp;&amp;st[q]&lt;=ed[c[p][i]])  \r\n            mdy(s[x][i],s[y][i]=0,c[p][i],q);  \r\n        else s[y][i]=s[x][i];     \r\n}  \r\n     \r\nll qry(int x,int y,int z)  \r\n{  \r\n    if (!x) return 0;  \r\n    if (z==y)  \r\n    {  \r\n        ll ans=0;  \r\n        for (int i=0;i&lt;3;i++)  \r\n            if (c[y][i]) ans+=f[s[x][i]];  \r\n        return ans;  \r\n    }  \r\n    ll ans=used[x]*dis(y,z);  \r\n    for (int i=0;i&lt;3;i++)  \r\n        if (c[y][i]&amp;&amp;st[z]&gt;=st[c[y][i]]&amp;&amp;st[z]&lt;=ed[c[y][i]])  \r\n            ans+=qry(s[x][i],c[y][i],z);  \r\n        else ans+=f[s[x][i]]+g[s[x][i]]*dis(y,z);  \r\n    return ans;  \r\n}  \r\n     \r\nint main()  \r\n{  \r\n    //reopen(&quot;4.in&quot;,&quot;r&quot;,stdin);  \r\n    //freopen(&quot;4.out&quot;,&quot;w&quot;,stdout);  \r\n    scanf(&quot;%d%d&quot;,&amp;n,&amp;q);  \r\n    for (int i=1;i&lt;=n;i++)  \r\n        scanf(&quot;%d&quot;,&amp;w[i]);  \r\n    for (int i=2;i&lt;=n;i++)  \r\n    {  \r\n        scanf(&quot;%d%d%d&quot;,&amp;x,&amp;y,&amp;z);  \r\n        Link(x,y,z);  \r\n    }  \r\n    cnt=n;  \r\n    dfs(1,0);//cnt=2n  \r\n    L=0;  \r\n    memset(Fst,0,sizeof Fst);  \r\n         \r\n    RT=build(1);  \r\n    DFS(RT);  \r\n    DFS(1,0);//ly=4n  \r\n         \r\n    lg[1]=0;  \r\n    for (int i=2;i&lt;=ly;i++)  \r\n        lg[i]=lg[i&gt;&gt;1]+1;  \r\n    e[0]=1;  \r\n    for (int i=1;i&lt;=lg[ly];i++)  \r\n        e[i]=e[i-1]&lt;&lt;1;  \r\n    for (int i=1;i&lt;=lg[ly];i++)  \r\n    {  \r\n        for (int j=1;j&lt;=ly;j++)  \r\n            r[j][i]=min(r[j][i-1],r[j+e[i-1]][i-1]);  \r\n    }  \r\n         \r\n    for (int i=1,apa=0;i&lt;=n;i++)  \r\n    {  \r\n        mdy(rt[i-1],rt[i],RT,w[i]);//nd+=log 2n  \r\n    }  \r\n    while(q--)  \r\n    {  \r\n        scanf(&quot;%d&quot;,&amp;p);  \r\n        if (p==1)  \r\n        {  \r\n            scanf(&quot;%d%d%d&quot;,&amp;x,&amp;y,&amp;z);  \r\n            ans=qry(rt[y],RT,z)-qry(rt[x-1],RT,z);\r\n            printf(&quot;%lld\\n&quot;,ans);\r\n        }   \r\n        else\r\n        {  \r\n            scanf(&quot;%d&quot;,&amp;x); \r\n            mdy(rt[x-1],rt[x],RT,w[x+1]);  \r\n            swap(w[x],w[x+1]);  \r\n        }  \r\n    }  \r\n}  \r\n```');

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_category`
--

CREATE TABLE `jnxxhzz_category` (
  `category_id` smallint(5) UNSIGNED NOT NULL COMMENT '分类自增ID',
  `category_name` varchar(10) NOT NULL COMMENT '分类名称'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_category`
--

INSERT INTO `jnxxhzz_category` (`category_id`, `category_name`) VALUES
(1, 'test'),
(3, 'ACM'),
(4, 'ZCMU'),
(5, 'HDU'),
(6, '网络赛'),
(7, 'python'),
(8, '小玩具');

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_comment`
--

CREATE TABLE `jnxxhzz_comment` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '评论ID',
  `pid` int(10) UNSIGNED NOT NULL COMMENT '上级评论ID',
  `username` varchar(30) NOT NULL COMMENT '评论用户',
  `img_url` varchar(150) NOT NULL COMMENT '用户头像URL',
  `like_count` int(10) UNSIGNED NOT NULL COMMENT '评论点赞量',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT '评论时间',
  `is_checked` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否查看',
  `article_id` smallint(5) UNSIGNED NOT NULL COMMENT '所属博文ID'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_comment`
--

INSERT INTO `jnxxhzz_comment` (`id`, `pid`, `username`, `img_url`, `like_count`, `content`, `timestamp`, `is_checked`, `article_id`) VALUES
(3, 0, 'jnxxhzz', '/Public/img/youke.png', 0, 'test', 1509435957, 1, 3),
(4, 0, 'wowwow', '/Public/img/youke.png', 0, '不错不错', 1509450052, 1, 3),
(5, 0, '123456', '/Public/img/youke.png', 0, '好好玩的样子<img src="http://www.jnxxhzz.com:81/Public/img//twemoji/1f604.png" title="1f604" width="22">', 1509460170, 1, 4),
(6, 0, '曾荣丽', '/Public/img/youke.png', 0, '厉害', 1510054484, 1, 5),
(7, 0, 'zhaoluo', '/Public/img/youke.png', 0, '能求一下I题的数据吗orz &nbsp;卡在81.82％了', 1513739029, 1, 9),
(8, 7, 'admin', '/Public/Upload/2017-10-16/9b5615ef0872e383a28f06b560738c47.JPG', 0, '中间也可能出现定义操作', 1514086423, 1, 9);

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_friend_links`
--

CREATE TABLE `jnxxhzz_friend_links` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '分类自增ID',
  `web_name` varchar(15) NOT NULL DEFAULT '' COMMENT '网站名称',
  `web_url` varchar(128) NOT NULL DEFAULT '' COMMENT '网站URL',
  `sort_num` smallint(5) UNSIGNED NOT NULL DEFAULT '50' COMMENT '排序数字'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_friend_links`
--

INSERT INTO `jnxxhzz_friend_links` (`id`, `web_name`, `web_url`, `sort_num`) VALUES
(1, 'csdnblog', 'http://blog.csdn.net/jnxxhzz', 50),
(2, 'codeforces', 'http://codeforces.com/problemset', 50);

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_manager`
--

CREATE TABLE `jnxxhzz_manager` (
  `id` tinyint(3) UNSIGNED NOT NULL COMMENT '自增ID',
  `username` varchar(15) NOT NULL COMMENT '管理员用户名',
  `password` char(60) NOT NULL COMMENT '管理员密码',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT '上次登陆时间',
  `ip` int(10) UNSIGNED NOT NULL COMMENT '上次登陆IP'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_manager`
--

INSERT INTO `jnxxhzz_manager` (`id`, `username`, `password`, `timestamp`, `ip`) VALUES
(1, 'admin', '$2y$10$RVJ56Jbu88TAbL42IPUEsOPWHw0.W8R7VnbKeNAy1I1IkK8iLgjfe', 1514170720, 2090879011);

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_message`
--

CREATE TABLE `jnxxhzz_message` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '留言ID',
  `pid` int(10) UNSIGNED NOT NULL COMMENT '上级留言ID',
  `username` varchar(30) NOT NULL COMMENT '留言用户',
  `img_url` varchar(150) NOT NULL COMMENT '用户头像URL',
  `like_count` int(10) UNSIGNED NOT NULL COMMENT '留言点赞量',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT '留言时间',
  `is_checked` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否查看'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_message`
--

INSERT INTO `jnxxhzz_message` (`id`, `pid`, `username`, `img_url`, `like_count`, `content`, `timestamp`, `is_checked`) VALUES
(17, 14, 'admin', '/Public/Upload/2017-10-16/9b5615ef0872e383a28f06b560738c47.JPG', 0, '没有...谢谢反馈', 1509710702, 1),
(10, 0, 'wowwow', '/Public/img/youke.png', 0, '<img src="http://www.jnxxhzz.com:81/Public/img//twemoji/1f600.png" title="1f600" width="22">', 1509449946, 1),
(11, 0, 'wowwow', '/Public/img/youke.png', 0, '厉害了', 1509449955, 1),
(12, 0, 'wowwow', '/Public/img/youke.png', 0, '都不用注册的<br>', 1509449966, 1),
(13, 0, '嘿 好久不见 江直树', '/Public/img/youke.png', 1, '看见了我们大长安', 1509457620, 1),
(14, 0, '多喝开水早睡觉', '/Public/img/youke.png', 0, '用手机看的话，置顶的那一条没在最上面在最下面，这是代码本身的问题还是浏览器的兼容问题呀（ps我现在是用的Safari浏览器看的）；还有啊，为什么主页是自适应的留言板就不是了，看不起我们留言板嘛。弱弱地问一句，找到bug有没有奖励呀～', 1509552603, 1),
(15, 0, '多喝开水早睡觉', '/Public/img/youke.png', 0, '用户名一定要6位的话，中午只要三个汉字就够了吧，不然中文名好长，用户体验感太差，强烈建议可以改成三个汉字就够了<img src="http://www.jnxxhzz.com:81/Public/img//twemoji/1f615.png" title="1f615" width="22">（顺便测一发表情包）', 1509552779, 1),
(18, 14, '多喝开水', '/Public/img/youke.png', 0, '回复 admin: test', 1509727127, 1),
(20, 0, '多喝开水', '/Public/img/youke.png', 0, '我其实是可爱的学妹。', 1509727538, 1);

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_operation_log`
--

CREATE TABLE `jnxxhzz_operation_log` (
  `id` int(10) UNSIGNED NOT NULL COMMENT '自增ID',
  `username` varchar(15) NOT NULL COMMENT '操作员',
  `opt_type` tinyint(3) UNSIGNED NOT NULL COMMENT '操作类型 0 add 1 edit 2 delete 3 admin 4 webinfo 5 backup',
  `opt_info` varchar(255) NOT NULL COMMENT '操作信息',
  `timestamp` int(10) UNSIGNED NOT NULL COMMENT '操作时间',
  `ip` int(10) UNSIGNED NOT NULL COMMENT '操作IP'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_operation_log`
--

INSERT INTO `jnxxhzz_operation_log` (`id`, `username`, `opt_type`, `opt_info`, `timestamp`, `ip`) VALUES
(1, 'admin', 0, '添加分类:小玩具', 1510731671, 2090879011),
(2, 'admin', 0, '添加文章:手把手教你做一个自己的chrome扩展程序', 1510735123, 2090879011),
(3, 'admin', 0, '添加文章:hdu6225—Little Boxes', 1511332746, 0),
(4, 'admin', 1, '修改文章:hdu6225—Little Boxes', 1511434883, 2090879011),
(5, 'admin', 1, '修改文章:博客更新日志', 1511435857, 2090879011),
(6, 'admin', 1, '修改文章:手把手教你做一个自己的chrome扩展程序', 1512722736, 2090879011),
(7, 'admin', 0, '添加文章:浙江中医药大学第十一届校赛题解', 1512886700, 2090879011),
(8, 'admin', 1, '修改文章:浙江中医药大学第十一届校赛题解', 1512887511, 2090879011),
(9, 'admin', 1, '修改文章:浙江中医药大学第十一届校赛题解', 1512893531, 2062121917),
(10, 'admin', 1, '修改文章:浙中医大计算机系新生指南', 1512959647, 2090879011),
(11, 'admin', 1, '修改文章:浙江中医药大学第十一届校赛题解', 1512959824, 2090879011),
(12, 'admin', 1, '修改文章:浙中医大计算机系新生指南', 1512959879, 2090879011),
(13, 'admin', 0, '回复评论: 中间也可能出现定义操作', 1514086423, 2090879011);

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_sessions`
--

CREATE TABLE `jnxxhzz_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_sessions`
--

INSERT INTO `jnxxhzz_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('4148ac34ab8ad255a9186a143ed9e1a562482ec0', '124.160.72.35', 1514171079, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343137303635373b656e6372797074696f6e5f6b65797c733a31363a226c4b4e59417a59744f78684455584442223b69767c733a31363a225636356176704350456474646962346e223b6c6f67696e5f666c61677c613a343a7b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a393a2274696d657374616d70223b733a31303a2231353134313730363237223b733a323a226970223b733a31303a2232303930383739303131223b7d),
('29060e5a6556d0aad684015fb7a241dcc221372a', '124.160.72.35', 1514170564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343137303536343b656e6372797074696f6e5f6b65797c733a31363a2238617a5051437549467a57614e587545223b5f5f63695f766172737c613a323a7b733a31343a22656e6372797074696f6e5f6b6579223b693a313531343137303836343b733a323a226976223b693a313531343137303836343b7d69767c733a31363a22536678754d77533042616e647632306d223b),
('c620d899d9145a32d2e8a88c388aa00c09e560a4', '124.160.72.35', 1514170636, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343137303632303b656e6372797074696f6e5f6b65797c733a31363a223832774f7252706538617a3531453032223b69767c733a31363a2265444a33616865635730475730724451223b6c6f67696e5f666c61677c613a343a7b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a393a2274696d657374616d70223b733a31303a2231353134313639373535223b733a323a226970223b733a31303a2232303930383739303131223b7d),
('96904b217df56276372953376f0a367f52260d30', '124.160.72.35', 1514169455, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343136383731393b656e6372797074696f6e5f6b65797c733a31363a2253414e7433524253343773715959736e223b69767c733a31363a2244537462544a676b7a514b3452325654223b6c6f67696e5f666c61677c613a343a7b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a393a2274696d657374616d70223b733a31303a2231353134303836333836223b733a323a226970223b733a31303a2232303930383739303131223b7d),
('593b4bd36ea60ce384ea8ca5b95efba0949110cd', '124.160.72.35', 1514170514, 0x5f5f63695f6c6173745f726567656e65726174657c693a313531343136393735323b656e6372797074696f6e5f6b65797c733a31363a2276564879344157576e45753735545a59223b69767c733a31363a224179314d774c663379484d585368784f223b6c6f67696e5f666c61677c613a343a7b733a323a226964223b733a313a2231223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a393a2274696d657374616d70223b733a31303a2231353134313638373234223b733a323a226970223b733a31303a2232303930383739303131223b7d);

-- --------------------------------------------------------

--
-- 表的结构 `jnxxhzz_webinfo`
--

CREATE TABLE `jnxxhzz_webinfo` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `web_title` varchar(30) NOT NULL DEFAULT '' COMMENT '网站标题',
  `web_author` varchar(30) NOT NULL DEFAULT 'admin' COMMENT 'web主人',
  `author_img` varchar(150) NOT NULL DEFAULT '' COMMENT '介绍图片头像URL',
  `author_intr` text NOT NULL COMMENT 'web主人介绍',
  `email` varchar(128) NOT NULL DEFAULT '' COMMENT 'web主人email',
  `qq` varchar(15) NOT NULL DEFAULT '' COMMENT 'qq',
  `csdn` varchar(128) NOT NULL DEFAULT '' COMMENT 'csdn博客',
  `github` varchar(128) NOT NULL DEFAULT '' COMMENT 'web主人github地址',
  `web_notice_title` varchar(30) NOT NULL DEFAULT '暂无公告' COMMENT '公告标题',
  `web_notice` text NOT NULL COMMENT '公告',
  `ICP` varchar(30) NOT NULL DEFAULT '暂无' COMMENT 'ICP备案号',
  `start_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '建站时间',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '暂无' COMMENT '网站关键字SEO',
  `seo_description` text NOT NULL COMMENT '网站描述SEO',
  `hot_max` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最热栏最大条目数',
  `tag_max` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '标签栏最大条目数',
  `cate_max` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '分类栏最大条目数',
  `archive_max` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '归档栏最大条目数',
  `friendlink_max` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '友链栏最大条目数',
  `is_record` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否备案',
  `carousel_max` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大轮播数量',
  `article_max` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '最大文章条目数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jnxxhzz_webinfo`
--

INSERT INTO `jnxxhzz_webinfo` (`id`, `web_title`, `web_author`, `author_img`, `author_intr`, `email`, `qq`, `csdn`, `github`, `web_notice_title`, `web_notice`, `ICP`, `start_time`, `seo_keywords`, `seo_description`, `hot_max`, `tag_max`, `cate_max`, `archive_max`, `friendlink_max`, `is_record`, `carousel_max`, `article_max`) VALUES
(1, 'jnxxhzz', 'jnxxhzz', '2017-10-16/9b5615ef0872e383a28f06b560738c47.JPG', 'hz<br>\r\n<p>ACM菜鸡+游戏菜鸡=菜鸡^2</p>', '470585226@qq.com', '470585226', 'http://blog.csdn.net/jnxxhzz', '', '正式上线~', '个人博客正式上线~www.jnxxhzz.com持续更新和维护~', '浙ICP备17048957号', 1508137213, 'jnxxhzz,zcmu,ZCMUOJ,ACM,hdu,HDU', 'jnxxhzz zcmu ZCMUOJ ACM hdu HDU ICPC blog', 6, 40, 10, 10, 20, 1, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jnxxhzz_article`
--
ALTER TABLE `jnxxhzz_article`
  ADD PRIMARY KEY (`article_id`),
  ADD UNIQUE KEY `article_name` (`article_name`),
  ADD KEY `cate` (`category_id`),
  ADD KEY `hot` (`article_like`),
  ADD KEY `publish_time` (`publish_time`),
  ADD KEY `modify_time` (`modify_time`) USING BTREE;
ALTER TABLE `jnxxhzz_article` ADD FULLTEXT KEY `keyword` (`article_keyword`);

--
-- Indexes for table `jnxxhzz_category`
--
ALTER TABLE `jnxxhzz_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`category_name`);

--
-- Indexes for table `jnxxhzz_comment`
--
ALTER TABLE `jnxxhzz_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `jnxxhzz_friend_links`
--
ALTER TABLE `jnxxhzz_friend_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jnxxhzz_manager`
--
ALTER TABLE `jnxxhzz_manager`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `jnxxhzz_message`
--
ALTER TABLE `jnxxhzz_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `jnxxhzz_operation_log`
--
ALTER TABLE `jnxxhzz_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `opt_type` (`opt_type`);

--
-- Indexes for table `jnxxhzz_sessions`
--
ALTER TABLE `jnxxhzz_sessions`
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `jnxxhzz_webinfo`
--
ALTER TABLE `jnxxhzz_webinfo`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `jnxxhzz_article`
--
ALTER TABLE `jnxxhzz_article`
  MODIFY `article_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '博文自增ID', AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `jnxxhzz_category`
--
ALTER TABLE `jnxxhzz_category`
  MODIFY `category_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类自增ID', AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `jnxxhzz_comment`
--
ALTER TABLE `jnxxhzz_comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论ID', AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `jnxxhzz_friend_links`
--
ALTER TABLE `jnxxhzz_friend_links`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '分类自增ID', AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `jnxxhzz_manager`
--
ALTER TABLE `jnxxhzz_manager`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID', AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `jnxxhzz_message`
--
ALTER TABLE `jnxxhzz_message`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言ID', AUTO_INCREMENT=24;
--
-- 使用表AUTO_INCREMENT `jnxxhzz_operation_log`
--
ALTER TABLE `jnxxhzz_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增ID', AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `jnxxhzz_webinfo`
--
ALTER TABLE `jnxxhzz_webinfo`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
