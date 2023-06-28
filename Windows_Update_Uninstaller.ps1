# Replace nnnnnnn with the KB Number of the update to uninstall and commit the changes.
# If the script has been previously used, update the KB digits with the KB number of the new update to be uninstalled.
# Steve Shapiro 2023-06
# Source: https://docs.faronics.com/faronicsdeploy/custom-scripts-powershell-vb-batch/custom-scripts-library/uninstall-a-windows-update
#
wusa /uninstall /KB:KB4534170 /quiet /forcerestart
