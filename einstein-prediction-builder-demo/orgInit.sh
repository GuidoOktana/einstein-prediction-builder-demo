# sfdx force:org:create -f config/project-scratch-def.json -d 30 -s -w 60
# sfdx force:source:push
# sfdx force:user:password:generate
# sfdx force:user:permset:assign -n EPB
# sfdx force:org:open -p /lightning/setup/SetupOneHome/home


sfdx force:org:create -f config/project-scratch-def.json -s -d 1 
sfdx force:source:push
sfdx force:user:permset:assign -n EPB
# sfdx force:data:tree:import -p data/masterImportPlan.json
# sfdx force:apex:execute -f scripts/setup.cls

sfdx force:user:password:generate -p sfdx1234 -g User -l User
sfdx force:org:open