try
    rosinit
catch
end

message = set_initialpose(0,0,-pi);

[client,goalMsg] = rosactionclient('/move_base');
waitForServer(client)
client.FeedbackFcn = [];

x = 1;
y = 1;
goalMsg.TargetPose.Pose.Position.X = x;
goalMsg.TargetPose.Pose.Position.Y = y;
[resultMsg,~,~] = sendGoalAndWait(client,goalMsg);