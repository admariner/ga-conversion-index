SELECT 
yyyymm Month, 
site Site,
platform Platform,
channel Channel, 
ifnull(sessions, 0) Sessions,
ifnull(pct_sessions, 0) PctSessions,
ifnull(goal_completions, 0) GoalCompletions,
ifnull(pct_goal_completions, 0) PctGoalCompletions,
ifnull(conversion_index, 0) ConversionIndex
FROM {{ ref('platform_index') }}
WHERE yyyymm >= '2017-06'