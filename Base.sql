use Base


CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

CREATE TABLE [dbo].[Cart](
	[AccountID] [int] NULL,
	[ProductID] [int] NULL,
	[Amount] [int] NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[description] [nvarchar](max) NULL,
	[sell_ID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

create table [Order](
o_id [int] IDENTITY(1,1) primary key NOT NULL,
P_id [int] NOT NULL,
u_id [int] NOT NULL,
o_quantity [int] NOT NULL,
o_date nvarchar(max) NOT NULL,

)

create Table [dbo].[new](
[id] [int] IDENTITY(1,1) NOT NULL,
[image] [nvarchar](max) NULL,
[title] [nvarchar](max) NULL,
[author] [nvarchar](max) NULL,
[date] [nvarchar](max) NULL,
[description] [nvarchar](max) NULL,
[moredescription] [nvarchar](max) NULL,
)

SET IDENTITY_INSERT [dbo].[Account] ON 


INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'123456', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (2, N'Anjolie', N'SNZ6HE', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (3, N'Ferris', N'RXH3XJ', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (4, N'Katell', N'HWV8ZN', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (5, N'Zahir', N'NPX7OF', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (6, N'Conan', N'WIZ5VZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (7, N'Cade', N'ZSW2LU', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (8, N'Micah', N'RVV5SR', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (9, N'Rowan', N'VAI6XR', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (10, N'Kirby', N'DNX6JK', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (11, N'Tanisha', N'XWU7JP', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (12, N'Howard', N'TSR5MR', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (13, N'Tana', N'EHS8CM', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (14, N'Hadassah', N'YOY7ZW', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (15, N'Echo', N'IGE8TN', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (16, N'Slade', N'OFO6QS', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (17, N'Devin', N'IBM6RZ', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (18, N'Rafael', N'WZA0IH', 1, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (19, N'Madaline', N'QMW4EN', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (20, N'Vera', N'CZB2VM', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (21, N'Summer', N'PSQ7LC', 0, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (22, N'Dominique', N'IKV0IX', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'admin', N'123', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (24, N'mra', N'mra', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (25, N'mrb', N'123', 0, 0)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (26, N'Camden', N'123', 0, 0)

SET IDENTITY_INSERT [dbo].[Account] OFF



SET IDENTITY_INSERT [dbo].[product] ON 



INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (1,N'Strawberry', N'https://i.imgur.com/kzWeGjU.jpeg',85,N'Strawberries are small, bright red fruits, sweet and widely used in cuisine. They contain many vitamins and antioxidants, and can be used in various dishes and drinks. Strawberries are typically grown in warm and cool climates worldwide.',1)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (2,N'Berry', N'https://i.imgur.com/vyN3tLi.jpeg',70,N'Berries are small fruits, often brightly colored and sweet in flavor. Common types of berries include strawberries, blueberries, raspberries, and cranberries. Berries are commonly used in cuisine to make juices, jams, desserts, or eaten fresh. They are rich in antioxidants, vitamins, and minerals that are beneficial for health. Berries are often considered an important part of a healthy diet and provide numerous health benefits. Berry plants typically thrive in moist climates and can be grown in home gardens or on large farms.',5)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (3,N'Lemon', N'https://i.imgur.com/YkkRU3c.jpeg',35,N'Lemon is a citrus fruit known for its sour taste and high vitamin C content. Widely used in cooking, beverages, and garnishes, it offers health benefits including immune support and digestion aid. Lemon trees thrive in warm climates, producing oval fruits with a thick, textured peel and juicy pulp.',6)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (4,N'Kiwi', N'https://i.imgur.com/WLhzoRW.jpeg',50,N'Kiwi is a small, round fruit with brown fuzzy skin and green flesh containing black seeds. It has a sweet and tangy flavor, high in vitamin C. Kiwi is commonly eaten fresh, added to salads or smoothies, and used in desserts like jams and ice cream. The vine-like kiwi plant thrives in warm climates and is harvested when ripe for best flavor.',7)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (5,N'Green Apple', N'https://i.imgur.com/FmGDRun.jpeg',45,N'Green apples, also known as Granny Smith apples, are characterized by their bright green skin and tart flavor. They are popular for their crisp texture and are commonly used in cooking, baking, and snacking. Green apples are low in calories and high in fiber and vitamin C, making them a healthy choice for various dishes and snacks.',9)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (6,N'Mulberry',N'https://i.imgur.com/UT0Lr60.jpeg',80,N'Mulberry trees are deciduous trees known for their sweet, juicy fruits and heart-shaped leaves. They thrive in various climates, producing black, red, purple, or white berries that are rich in vitamin C and antioxidants. Mulberry trees also have cultural significance and are used in silk production. They are valued for their wood and are easy to grow in well-drained soil and full sun.',10)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (7,N'WaterMelon',N'https://i.imgur.com/60A0wiR.jpeg',60,N'Watermelon is a large, refreshing fruit with a thick green rind and juicy, pink or red flesh. It is low in calories, high in water content, and packed with vitamins and antioxidants. Typically enjoyed fresh as a snack or dessert, watermelon can also be used in salads, smoothies, and juices. It is grown in warm climates, harvested when mature, and enjoyed worldwide for its sweet taste and hydrating properties.',14)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (8,N'Mango',N'https://i.imgur.com/Uy7E4uR.jpeg',30,N'Mango is a tropical fruit with smooth, colorful skin and juicy, sweet flesh. It is rich in vitamins and fiber, offering health benefits like improved digestion and immune support. Mangoes are enjoyed fresh or used in dishes like salads, smoothies, and desserts. They are grown in tropical climates and harvested when ripe for optimal flavor and texture.',15)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (9,N'Orange',N'https://i.imgur.com/Zv4oewp.jpeg',25,N'Oranges are citrus fruits known for their round shape, bright orange color, and juicy flesh. They are rich in vitamin C and have a tangy-sweet flavor. Oranges are commonly eaten fresh, juiced, or used in cooking and baking. They grow on evergreen trees and are harvested when ripe, typically in the winter months. Oranges are popular worldwide and are enjoyed for their refreshing taste and nutritional benefits.',17)
INSERT [dbo].[product] ([id], [name], [image], [price], [description], [sell_ID]) VALUES (10,N'Rambutan',N'https://i.imgur.com/c3YTki3.jpeg',55,N'Rambutan is a tropical fruit native to Southeast Asia and is known for its hairy, spiky appearance. It has a sweet and juicy flesh, similar to lychee, and contains a single seed. Rambutans are typically eaten fresh as a snack or added to fruit salads and desserts. They are rich in vitamin C and antioxidants, offering various health benefits. Rambutan trees thrive in warm, tropical climates and produce fruit once or twice a year.',18)





SET IDENTITY_INSERT [dbo].[new] ON 


INSERT [dbo].[new] ([id],[image], [title], [author], [date], [description],[moredescription]) VALUES (1,N'https://i.imgur.com/vyyArUM.jpeg', N'You will vainly look for fruit on it in autumn', N'Admin', N'25 August, 2023', N'Amidst autumn is vibrant hues and the approaching harvest, a solitary barren tree stands as a poignant reminder of life is fleeting nature and the importance of cherishing every moment.',
N'In the autumnal stillness, the orchard stands as a testament to the ebb and flow of natureis bounty. Amidst the changing foliage and the cool whispers of the wind, one might expect the trees to be heavy with the promise of fruit. However, a closer inspection reveals a scene of quiet disappointment. The branches, once laden with the weight of ripening apples and pears, now sway bare and barren against the sky.

As the days grow shorter and the nights colder, the orchard becomes a place of futile pursuit. Those who venture among the trees in search of autumn is harvest are met with naught but empty-handed frustration. Each glance upwards, each hopeful reach towards a branch, yields no reward. The orchard, once a symbol of abundance, now stands as a stark reminder of the capriciousness of nature.

In this season of transition, the orchard serves as a poignant metaphor for life is ephemeral beauty. Like the fruitless search among its trees, we often find ourselves grasping for meaning in the face of disappointment. Yet, even in our futile efforts, there is a quiet resilience to be found. For just as the orchard awaits the promise of spring, so too do we hold onto hope in the face of autumn is barrenness.')
INSERT [dbo].[new] ([id], [image],[title], [author], [date], [description],[moredescription]) VALUES(2,N'https://i.imgur.com/Z3OtZJ8.jpeg', N'Breakfast is nutritious with fresh fruits',N'Admin',N'5 June, 2023', N'As autumn arrives and the landscape fades, fresh fruits on our breakfast table symbolize abundance. Amidst barren trees elsewhere, our morning ritual serves as a reminder of nourishment despite seasonal scarcity.',
N'As the dawn breaks and the morning light spills over the kitchen table, there is a sense of anticipation in the air. Breakfast, the most important meal of the day, awaits with a promise of nourishment and vitality. And what better way to start the day than with a bowl of fresh fruits?

Glistening with dew and bursting with vibrant colors, the fruits beckon with their natural sweetness and succulence. From crisp apples to juicy oranges, each bite is a celebration of nature is bounty and a symphony of flavors. Whether enjoyed whole or sliced into a refreshing fruit salad, they offer a burst of energy and a wealth of essential vitamins and minerals.

Amidst the hustle and bustle of the morning routine, taking the time to savor these fruits is a simple yet profound act of self-care. With every bite, we fuel our bodies and nourish our souls, setting the tone for a day filled with vitality and well-being. So let breakfast be a celebration of freshness and flavor, a reminder that a nutritious start leads to a fulfilling day ahead.')
INSERT [dbo].[new] ([id], [image],[title], [author], [date], [description],[moredescription]) VALUES(3,N'https://i.imgur.com/iZzJRfq.jpeg', N'Good thoughts bear good fresh juicy fruit',N'Admin',N'13 May, 2023',N'In life is intricate tapestry, the simple truth emerges: positive thoughts lead to fruitful outcomes, providing nourishment for both ourselves and those around us, guiding us through life is complexities.',
N'In the garden of the mind, good thoughts are like seeds planted with care and intention. Nurtured by positivity and watered with hope, they take root and begin to grow, unfurling into a tapestry of possibilities. And just as a well-tended garden yields an abundance of fresh, juicy fruit, so too do good thoughts bear the fruits of their labor.

With each positive thought, we sow the seeds of optimism and gratitude. Like tender shoots reaching towards the sun, they grow and flourish, filling our minds with a sense of abundance and possibility. And as these thoughts ripen and mature, they manifest into tangible blessings in our lives, like ripe fruit waiting to be plucked.

From the sweetness of success to the juiciness of joy, good thoughts bear a harvest of abundance and fulfillment. They nourish our souls and sustain us through life is challenges, reminding us that positivity breeds positivity and that a mind cultivated with goodness will always bear the freshest, juiciest fruit. So let us tend to our thoughts with care and mindfulness, knowing that from good seeds, only good fruit can grow.')
INSERT [dbo].[new] ([id], [image],[title], [author], [date], [description],[moredescription]) VALUES(4, N'https://i.imgur.com/tN8H7IL.jpeg',N'Fall in love with the fresh orange',N'Admin', N'16 April, 2023',N'As seasons shift, the allure of fresh oranges beckons. With their vibrant color and invigorating scent, they offer a delightful experience for the senses. Join me as we explore the charm of this beloved fruit.',
N'In the midst of bustling markets and vibrant citrus groves, there is a simple pleasure waiting to be discovered – the fresh orange. With its radiant hue and enticing aroma, it beckons like a beacon of sunshine on a crisp autumn day. And just as one falls in love with the warmth of the sun is embrace, so too can one fall in love with the humble orange.

As you peel back its vibrant skin, releasing a burst of citrusy fragrance, there is a sense of anticipation in the air. Each juicy segment offers a symphony of flavors – tangy, sweet, and refreshing – a sensory delight for the palate. And as you savor each bite, you can not help but fall deeper under its spell, captivated by its simplicity and purity.

In the simplicity of the fresh orange lies a lesson in appreciation and gratitude. It reminds us to find joy in the little things, to savor each moment with mindfulness and presence. Just as one falls in love with the beauty of a sunset or the melody of a song, so too can one fall in love with the fresh orange – a humble fruit that embodies the essence of life is simple pleasures. So let us embrace the joy of the fresh orange, and in doing so, rediscover the magic of falling in love with the world around us.')
INSERT [dbo].[new] ([id], [image],[title], [author], [date], [description],[moredescription]) VALUES(5,N'https://i.imgur.com/YVKaUBu.jpeg', N'Why the berries always look delicious',N'Admin', N'9 March, 2023',N'Berries possess an irresistible charm, drawing us in with their vibrant colors and enticing aroma. But what makes them eternally appealing? Let is explore the secrets behind why berries always look so delicious.',
N'There is a certain allure to berries that transcends mere appearance – it is as if they were designed to captivate the senses. From the vibrant hues of strawberries and raspberries to the deep, rich tones of blueberries and blackberries, their colors alone evoke a sense of freshness and vitality. But it is not just their visual appeal that makes berries so irresistible.

The plump, juicy texture of berries begs to be savored with every bite, bursting with flavor that dances on the taste buds. Whether enjoyed fresh from the vine or incorporated into decadent desserts, their sweetness is unparalleled, leaving a lingering sensation of satisfaction and delight.

Perhaps it is their association with summer and the promise of warmer days that makes berries so appealing. As symbols of abundance and renewal, they represent the bounty of nature and the joys of harvest. Or maybe it is the memories they evoke – of lazy afternoons spent berry-picking in sun-drenched fields, or of indulgent treats shared with loved ones.

Whatever the reason, there is no denying the universal appeal of berries. Their allure lies not only in their visual appeal and delicious flavor but also in the emotions and memories they evoke. So the next time you find yourself drawn to a bowl of ripe, juicy berries, remember that their irresistible charm lies in their ability to nourish both body and soul.')
INSERT [dbo].[new] ([id], [image],[title], [author], [date], [description],[moredescription]) VALUES(6,N'https://i.imgur.com/TiU2gTL.jpeg', N'Love for fruits are genuine of Mr.Tran',N'Admin', N'10 January, 2023',N'Meet Mr. Tran, whose profound love for fruits goes beyond mere preference. Join us as we explore his heartfelt connection to nature is bounty and the nourishment it brings to his life.',
N'In the bustling city where concrete jungles dominate the landscape, there exists a man whose love for fruits transcends the ordinary. Mr. Tran, with his weathered hands and warm smile, is known throughout the neighborhood for his genuine affection for the bounties of nature.

Every morning, rain or shine, Mr. Tran can be found at the local market, carefully selecting the freshest fruits for his beloved customers. With a discerning eye and a gentle touch, he inspects each piece, ensuring that only the finest specimens make their way into his cart.

But it is not just the quality of the fruits that sets Mr. Tran apart – it is the passion and devotion he brings to his craft. He takes the time to share his knowledge and expertise with anyone who crosses his path, offering tips on ripeness and flavor with the enthusiasm of a true connoisseur.

For Mr. Tran, fruits are more than just food – they are a source of joy and inspiration. Whether he is crafting a colorful fruit platter for a special occasion or simply enjoying a quiet moment with a ripe mango, his love for fruits shines through in everything he does.

And it is this genuine love and appreciation that endears Mr. Tran to all who know him. In a world filled with hustle and bustle, his simple passion for fruits serves as a reminder to savor the simple pleasures in life and to always approach each day with an open heart and a generous spirit.')