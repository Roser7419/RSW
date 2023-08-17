# 重置计分板
scoreboard objectives remove CollectPoint
scoreboard objectives add CollectPoint dummy "集物积分"
scoreboard objectives remove CollectGoal
scoreboard objectives add CollectGoal dummy "收集目标"
scoreboard objectives remove GoalQuery
scoreboard objectives add GoalQuery minecraft.used:written_book "目标查询"