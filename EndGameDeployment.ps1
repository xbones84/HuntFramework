
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")  #loading the necessary .net libraries (using void to suppress output)
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')

$LabelBackgroundColor = "#F5873C"
$LabelForegroundColor = "#1B4178"
$BackgroundColor = "#1B4178"

$FontFamily = "Arial Black"
$FontWeight = "Normal"
$FontSize = "11"

$LabelBackgroundColor = $global:LabelBackgroundColor
$LabelForegroundColor = $global:LabelForegroundColor
$BackgroundColor = $global:BackgroundColor

[xml]$XAML = @"
<Window 
    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
    Title="Quick Resourse Tool" Height="675" Width="1150" WindowStartupLocation="CenterScreen" WindowStyle="None" Background="$($BackgroundColor)" AllowsTransparency="True" Opacity=".96">
    <Grid>
        <Button Name="ImportTargets" Content="Import Targets" HorizontalAlignment="Left" Margin="0,10,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>

        <Button Name="ImportNoStrike" Content="Import No Strike Targets" HorizontalAlignment="Left" Margin="0,45,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>

        <Button Name="CheckTargets" Content="Check Targets" HorizontalAlignment="Left" Margin="0,80,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>

        <Label Name="OperatingSystemLabel" Content="Operating System:" HorizontalAlignment="Left" Margin="0,115,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="OperatingSystemTextBox" HorizontalAlignment="Left" Margin="140,120,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="SDCVersionLabel" Content="SDC Version:" HorizontalAlignment="Left" Margin="0,150,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="SDCVersionTextBox" HorizontalAlignment="Left" Margin="140,155,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="ComputerMakeLabel" Content="Computer Make:" HorizontalAlignment="Left" Margin="0,185,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="ComputerMakeTextBox" HorizontalAlignment="Left" Margin="140,190,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="ComputerModelLabel" Content="Computer Model:" HorizontalAlignment="Left" Margin="0,220,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="ComputerModelTextBox" HorizontalAlignment="Left" Margin="140,225,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="ProcessorLabel" Content="Processor:" HorizontalAlignment="Left" Margin="0,255,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="ProcessorTextBox" HorizontalAlignment="Left" Margin="140,260,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="TotalMemoryLabel" Content="Total Memory (MB):" HorizontalAlignment="Left" Margin="0,290,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="TotalMemoryTextBox" HorizontalAlignment="Left" Margin="140,295,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="CDriveFreeSpaceLabel" Content="C: Free Space:" HorizontalAlignment="Left" Margin="0,325,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="CDriveFreeSpaceTextBox" HorizontalAlignment="Left" Margin="140,330,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="SerialNumberLabel" Content="Serial Number:" HorizontalAlignment="Left" Margin="0,360,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="SerialNumberTextBox" HorizontalAlignment="Left" Margin="140,365,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="IPAddressLabel" Content="IP Address:" HorizontalAlignment="Left" Margin="0,395,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="IPAddressTextBox" HorizontalAlignment="Left" Margin="140,398,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>
        
        <Label Name="MACAddressLabel" Content="MAC Address:" HorizontalAlignment="Left" Margin="0,430,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="MACAddressTextBox" HorizontalAlignment="Left" Margin="140,433,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>
        
        <Label Name="KBsInstalledLabel" Content="KBs Installed:" HorizontalAlignment="Left" Margin="0,465,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="KBsInstalledComboBox" HorizontalAlignment="Left" Margin="210,468,0,0" VerticalAlignment="Top" Width="120" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)"/>

        <Label Name="ComputerGroupsLabel" Content="Computer Groups:" HorizontalAlignment="Left" Margin="0,500,0,0" VerticalAlignment="Top" Width="503" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="ComputerGroupsComboBox" HorizontalAlignment="Left" Margin="140,503,0,0" VerticalAlignment="Top" Width="355" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)"/>

        <Label Name="SoftwareInstalledLabel" Content="Software Installed:" HorizontalAlignment="Left" Margin="0,535,0,0" VerticalAlignment="Top" Width="503" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="SoftwareInstalledComboBox" HorizontalAlignment="Left" Margin="140,538,0,0" VerticalAlignment="Top" Width="355" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)"/>

        <Label Name="USBDevicesLabel" Content="USB Devices:" HorizontalAlignment="Left" Margin="0,570,0,0" VerticalAlignment="Top" Width="503" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="USBDevicesComboBox" HorizontalAlignment="Left" Margin="140,573,0,0" VerticalAlignment="Top" Width="355" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)"/>

        <Label Name="RecoveryKeyLabel" Content="Recovery Key:" HorizontalAlignment="Left" Margin="0,605,0,0" VerticalAlignment="Top" Width="503" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBox Name="RecoveryKeyTextBox" HorizontalAlignment="Left" Margin="100,610,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="20" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="395"/>

        <Label Name="UserLabel" Content="User:" HorizontalAlignment="Left" Margin="400,10,0,0" VerticalAlignment="Top" Width="260" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="UserComboBox" HorizontalAlignment="Left" Margin="480,13,0,0" VerticalAlignment="Top" Width="170" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)"/>
        
        <Label Name="EDIPILabel" Content="EDIPI:" HorizontalAlignment="Left" Margin="400,45,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="EDIPITextBox" HorizontalAlignment="Left" Margin="528,50,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="19" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="EmailAddressLabel" Content="Email Address:" HorizontalAlignment="Left" Margin="400,80,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="EmailAddressTextBox" HorizontalAlignment="Left" Margin="528,85,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PhoneNumberLabel" Content="Phone #:" HorizontalAlignment="Left" Margin="400,115,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PhoneNumberTextBox" HorizontalAlignment="Left" Margin="528,120,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="19" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="IATrainingLabel" Content="IA Training Date:" HorizontalAlignment="Left" Margin="400,150,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="IATrainingTextBox" HorizontalAlignment="Left" Margin="528,155,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="19" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="LastComputerUsedLabel" Content="Last Comp Used:" HorizontalAlignment="Left" Margin="400,185,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="LastComputerUsedTextBox" HorizontalAlignment="Left" Margin="528,190,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="19" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="UserLastLogonLabel" Content="User Last Logon:" HorizontalAlignment="Left" Margin="400,220,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="UserLastLogonTextBox" HorizontalAlignment="Left" Margin="528,225,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="19" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="LdriveLabel" Content="L Drive:" HorizontalAlignment="Left" Margin="400,255,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="LDriveTextBox" HorizontalAlignment="Left" Margin="528,260,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="19" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="ProfileBackUpLabel" Content="Profile Drive:" HorizontalAlignment="Left" Margin="400,290,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="ProfileBackUpTextBox" HorizontalAlignment="Left" Margin="528,295,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="19" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="UserGroupsLabel" Content="User Groups:" HorizontalAlignment="Left" Margin="400,325,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="UserGroupsComboBox" HorizontalAlignment="Left" Margin="500,328,0,0" VerticalAlignment="Top" Width="230" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)"/>
        
        <Label Name="ComputerSearchLabel" Content="Check to Perform Computer Search" HorizontalAlignment="Left" Margin="400,360,0,0" VerticalAlignment="Top" Width="340" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <CheckBox Name="ComputerSearchCheckBox" HorizontalAlignment="Left" Margin="690,365,0,0" IsChecked="True" VerticalAlignment="Top"/>

        <Label Name="PrinterLabel" Content="Printer:" HorizontalAlignment="Left" Margin="800,10,0,0" VerticalAlignment="Top" Width="260" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="PrinterComboBox" HorizontalAlignment="Left" Margin="890,13,0,0" VerticalAlignment="Top" Width="160" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)"/>

        <Label Name="PrinterIPAddressLabel" Content="IP Address:" HorizontalAlignment="Left" Margin="800,45,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterIPAddressTextBox" HorizontalAlignment="Left" Margin="940,50,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterServerLabel" Content="Server:" HorizontalAlignment="Left" Margin="800,80,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterServerTextBox" HorizontalAlignment="Left" Margin="940,85,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterDriverLabel" Content="Driver:" HorizontalAlignment="Left" Margin="800,115,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterDriverTextBox" HorizontalAlignment="Left" Margin="940,120,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterLocationLabel" Content="Location:" HorizontalAlignment="Left" Margin="800,150,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterLocationTextBox" HorizontalAlignment="Left" Margin="940,155,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterStatusLabel" Content="Server Status:" HorizontalAlignment="Left" Margin="800,185,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterStatusTextBox" HorizontalAlignment="Left" Margin="940,190,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterConnectionLabel" Content="Network Connection:" HorizontalAlignment="Left" Margin="800,220,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterConnectionTextBox" HorizontalAlignment="Left" Margin="940,225,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterQueueLabel" Content="Jobs Queued:" HorizontalAlignment="Left" Margin="800,255,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterQueueTextBox" HorizontalAlignment="Left" Margin="940,260,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterJobStatusLabel" Content="Job Status:" HorizontalAlignment="Left" Margin="800,290,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <TextBlock Name="PrinterJobStatusTextBox" HorizontalAlignment="Left" Margin="940,295,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="190"/>

        <Label Name="PrinterJobOwnerLabel" Content="Job:" HorizontalAlignment="Left" Margin="800,325,0,0" VerticalAlignment="Top" Width="350" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Height="30"/>
        <ComboBox Name="PrinterJobOwnerComboBox" HorizontalAlignment="Left" Margin="890,328,0,0" VerticalAlignment="Top" Height="24" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" Width="250"/>

        <Button Name="PrinterInfoButton" Content="Get Info" HorizontalAlignment="Left" Margin="1065,10,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>
        <Button Name="UserInfoButton" Content="Get Info" HorizontalAlignment="Left" Margin="665,10,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>

        <Button Name="CloseButton" Content="Close" HorizontalAlignment="Left" Margin="1065,605,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>
        <Button Name="AboutButton" Content="About" HorizontalAlignment="Left" Margin="985,605,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>
        <Button Name="RDPButton" Content="Remote" HorizontalAlignment="Left" Margin="985,570,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>
        <Button Name="MSRAButton" Content="Assistance" HorizontalAlignment="Left" Margin="1065,570,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>
        <Button Name="ClearButton" Content="Clear" HorizontalAlignment="Left" Margin="1065,535,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>
        <Button Name="PrintButton" Content="Save As" HorizontalAlignment="Left" Margin="985,535,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>

        <Button Name="CancelJobsButton" Content="Cancel All" HorizontalAlignment="Left" Margin="1065,395,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>
        <Button Name="CancelSelectedJobButton" Content="Cancel" HorizontalAlignment="Left" Margin="1065,360,0,0" VerticalAlignment="Top" Width="75" Height="30" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" FontSize = "$($FontSize)" Background="$($LabelBackgroundColor)" Foreground="$($LabelForegroundColor)" BorderThickness="0"/>

        <TextBlock Name="QuarantineTextBox" HorizontalAlignment="Left" Margin="700,640,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="200" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" Background="$($LabelForegroundColor)" Foreground="$($LabelBackgroundColor)" Height="23" FontSize="14"/>
        <TextBlock Name="LoadingTextBox" HorizontalAlignment="Left" Margin="10,640,0,0" TextWrapping="Wrap" Text="" VerticalAlignment="Top" Width="250" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" Background="$($LabelForegroundColor)" Foreground="$($LabelBackgroundColor)" Height="23" FontSize="10"/>
        <TextBlock Name="TimeToCompleteTextBlock" HorizontalAlignment="Left" Margin="1030,640,12,0" TextWrapping="Wrap" Text="Time to Complete" VerticalAlignment="Top" Width="100" FontFamily = "$($FontFamily)" FontWeight = "$($FontWeight)" Background="$($LabelForegroundColor)" Foreground="$($LabelBackgroundColor)" Height="23" FontSize="10"/>

        $logo

    </Grid>
</Window>
"@

#Read XAML
$reader=(New-Object System.Xml.XmlNodeReader $xaml) 
try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch{Write-Host "Unable to load Windows.Markup.XamlReader. Some possible causes for this problem include: .NET Framework is missing PowerShell must be launched with PowerShell -sta, invalid XAML code was encountered."; exit}

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================
$xaml.SelectNodes("//*[@Name]") | ForEach-Object {Set-Variable -Name ($_.Name) -Value $Form.FindName($_.Name)}

class Target {
    [string]$IPAddress
    [string]$LastKnownState
    [bool]$ValidTarget
}

$global:Targets = @()
function ImportTargets
{
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "TXT (*.txt)| *.txt"
    $OpenFileDialog.ShowDialog() | Out-Null

    $ValidTargets = Get-Content $OpenFileDialog.filename
    $ValidTargets | Out-GridView

    $ValidTargets | ForEach-Object {
        $Target = [Target]::new()
        $Target.IPAddress = $_
        $Target.ValidTarget = $true
        $global:Targets += $Target
    }
}

function ImportNoStrike
{
    $OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
    $OpenFileDialog.initialDirectory = $initialDirectory
    $OpenFileDialog.filter = "TXT (*.txt)| *.txt"
    $OpenFileDialog.ShowDialog() | Out-Null

    $NoStrikeTargets = Get-Content $OpenFileDialog.filename
    $NoStrikeTargets | Out-GridView

    $NoStrikeTargets | ForEach-Object {
        $Target = [Target]::new()
        $Target.IPAddress = $_
        $Target.ValidTarget = $False
        $global:Targets += $Target
    }
}

function CheckTargets 
{
    Write-host "Test"
    $global:Targets | Out-GridView
}

Function CancelPrintJob
{
    $JobToCancel = $PrinterJobOwnerComboBox.Text.Split(",")[2]
    $PrinterJobOwnerComboBox.Items.Clear()
    $PrinterName = $PrinterComboBox.Text.Split(",")[0]
    $PrinterServer = $PrinterComboBox.Text.Split(",")[1]

    Write-Host "Job to Cancel" $JobToCancel

    $Jobs = Get-WMiObject -ComputerName $PrinterServer Win32_PrintJob | Where-Object {$_.Name -Match $PrinterName}

    if ($Jobs -ne $null)
    {
    $Jobs[$JobToCancel].Delete()
    }

    $Jobs = Get-WMiObject -ComputerName $PrinterServer Win32_PerfFormattedData_Spooler_PrintQueue | Select Name, Jobs  | Where-Object {$_.Name -eq $PrinterName}
    $PrinterQueueTextBox.Text = $Jobs.Jobs

    $Jobs = Get-WMiObject -ComputerName $PrinterServer Win32_PrintJob | Where-Object {$_.Name -Match $PrinterName}
    $PrinterJobStatusTextBox.Text = $Jobs.JobStatus

    if ($Jobs.Owner -ne $null)
    {
        foreach($Job in $Jobs)
        {
            $JobNumber = 0
            $JobOwner = Get-ADUser $Job.Owner
            $JobOwner.Name
            $Job.Document
            $PrinterJobOwnerComboBox.Items.Add($JobOwner.Name+","+$Job.Document+","+$JobNumber)
            $JobNumber++
        }
    }
}

function ClearPrinterFields
{
    $PrinterIPAddressTextBox.Text = ""
    $PrinterServerTextBox.Text = ""
    $PrinterDriverTextBox.Text = ""
    $PrinterLocationTextBox.Text = ""
    $PrinterStatusTextBox.Text = ""
    $PrinterConnectionTextBox.Text = ""
    $PrinterQueueTextBox.Text = ""
    $PrinterJobStatusTextBox.Text = ""
    $PrinterJobOwnerTextBox.Text = ""
    $PrinterJobOwnerComboBox.Items.Clear()
}

function ClearUserFields
{
    $EmailAddressTextBox.Text = ""
    $PhoneNumberTextBox.Text = ""
    $IATrainingTextBox.Text = ""
    $LastComputerUsedTextBox.Text = ""
    $UserLastLogonTextBox.Text = ""
    $LDriveTextBox.Text = ""
    $ProfileBackUpTextBox.Text = ""
    $UserGroupsComboBox.Items.Clear()
}

function ClearCompFields
{
    $TimeToCompleteTextBlock.Text = "Time to Complete"
    $LastUserLogonTextBox.text = ""
    $LastLogonDateTextBox.text = ""
    $OperatingSystemTextBox.Text = ""
    $SDCVersionTextBox.Text = ""
    $ComputerMakeTextBox.Text = ""
    $ComputerModelTextBox.Text = ""
    $ProcessorTextBox.text = ""
    $TotalMemoryTextBox.Text = ""
    $CDriveFreeSpaceTextBox.Text = ""
    $SerialNumberTextBox.Text = ""
    $IPAddressTextBox.Text = ""
    $MACAddressTextBox.Text = ""
    $ComputerGroupsComboBox.Items.Clear()
    $USBDevicesComboBox.Items.Clear()
    $SoftwareInstalledComboBox.Items.Clear()
    $KBsInstalledComboBox.Items.Clear()
    $RecoveryKeyTextBox.Text = ""
    $LoadingTextBox.Text = "Ready to Search"
}

function InfoNotAvailable
{
    $LoadingTextBox.Text = "Unable to Connect to Computer"
    $LastUserLogonTextBox.text = "Info Not Available"
    $CDriveFreeSpaceTextBox.Text = "Info Not Available"
    $OperatingSystemTextBox.Text = "Info Not Available"
    $SDCVersionTextBox.Text = "Info Not Available"
    $ComputerMakeTextBox.Text = "Info Not Available"
    $ComputerModelTextBox.Text = "Info Not Available"
    $ProcessorTextBox.text = "Info Not Available"
    $TotalMemoryTextBox.Text = "Info Not Available"
    $SerialNumberTextBox.Text = "Info Not Available"
    $IPAddressTextBox.Text = "Info Not Available"
    $MACAddressTextBox.Text = "Info Not Available"
    $UserGroupsComboBox.Items.Clear()
    $USBDevicesComboBox.Items.Clear()
    $SoftwareInstalledComboBox.Items.Clear()
    $KBsInstalledComboBox.Items.Clear()
}

function KBInfo
{
    $script = {

    $HotFixes = Get-ChildItem "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Component Based Servicing\Packages" | ForEach-Object {Get-ItemProperty $_.pspath} | Where-Object {$_.InstallClient -Match "WIndowsUpdateAgent"}

    New-Object -TypeName PSCustomObject -Property @{InstallName=$HotFixes.InstallName}
    }

    $KB = Invoke-Command -ComputerName $global:productComp -ScriptBlock $script 

    $KBarray = $KB.InstallName
    
    $items = @()
    foreach ($item in $KBarray) {if ($item -Match "KB"){$object = New-Object -TypeName PSCustomObject -Property @{Name=$Item} ;$items += $object}}
    $items2 = @()
    foreach ($item in $items){$object = New-Object -TypeName PSCustomObject -Property @{Name=($item.Name.split("for"))[3]}; $items2 += $object;}
    $items3 = @()
    foreach ($item in $items2){$object = New-Object -TypeName PSCustomObject -Property @{Name=($item.Name.split("_"))[1]}; $items3 += $object;}
    $items4 = @()
    foreach ($item in $items3){$object = New-Object -TypeName PSCustomObject -Property @{Name=($item.Name.split("~"))[0]}; $items4 += $object;}
    $items5 = @()
    foreach ($item in $items4){$object = New-Object -TypeName PSCustomObject -Property @{Name=($item.Name.split("~"))[0]}; $items5 += $object;}

    $items6 = $items5 | Sort-Object -Property Name -Unique

    foreach($item in $items6)
    {
        
        $KBsInstalledComboBox.items.add($item.Name)
    }
}

function ProductInfo
{
    $script = {

    $productlookup = Get-ChildItem hklm:\software\microsoft\windows\currentversion\uninstall | ForEach-Object {Get-ItemProperty $_.pspath} | Sort-Object -Property DisplayName

    New-Object -TypeName PSCustomObject -Property @{Products=$productlookup}
    }

    $products = Invoke-Command -ComputerName $global:productComp -ScriptBlock $script 

    $array1 = @()
    $array2 = @()

    $array1 = $products.Products.DisplayName
    $array2 = $products.Products.DisplayVersion

    $i = 0

    foreach($item in $array1)
    {
        $productsInfo = $array1[$i]+" "+$array2[$i] 
        $SoftwareInstalledComboBox.items.add($productsInfo)
        $i++
    }
}

function Print
{
    $Print = @()
    $Print = $UserComboBox.Text + "`n"
    $Print += "EDIPI: " + $EDIPITextBox.Text + "`n"
    $Print += "Email Address: " + $EmailAddressTextBox.Text + "`n"
    $Print += "Phone #: " + $PhoneNumberTextBox.Text + "`n"
    $Print += "IA Training Date: " + $IATrainingTextBox.Text + "`n"
    $Print += "Last Comp Used: " + $LastComputerUsedTextBox.Text + "`n"
    $Print += "User Last Logon: " + $UserLastLogonTextBox.Text + "`n"
    $Print += "L Drive: " + $LDriveTextBox.Text + "`n"
    $Print += "Profile Drive: " + $ProfileBackUpTextBox.Text + "`n"
    
    $Print += "Groups `n"
    foreach ($Group in $UserGroupsComboBox.Items)
    {
        $Print += "  " + $Group  + "`n"
    }
    $Print += "`n"

    $Print += $ComputerComboBox.Text + "`n"
    $Print += "Last User Logon: " + $LastUserLogonTextBox.text + "`n"
    $Print += "Last Logon Date: " + $LastLogonDateTextBox.text + "`n"
    $Print += "Operating System: " + $OperatingSystemTextBox.Text  + "`n"
    $Print += "SDC Version: " + $SDCVersionTextBox.Text  + "`n"
    $Print += "Computer Make: " + $ComputerMakeTextBox.Text + "`n"
    $Print += "Computer Model: " + $ComputerModelTextBox.Text  + "`n"
    $Print += "Processor: " + $ProcessorTextBox.text  + "`n"
    $Print += "Total Memory (MB): " + $TotalMemoryTextBox.Text + "`n"
    $Print += "C: Free Space: " + $CDriveFreeSpaceTextBox.Text + "`n"
    $Print += "Serial Number: " + $SerialNumberTextBox.Text + "`n"
    $Print += "IP Address: " + $IPAddressTextBox.Text + "`n"
    $Print += "MAC Address: " + $MACAddressTextBox.Text + "`n"

    $Print += "KBs Installed `n"
    $Count = $KBsInstalledComboBox.Items.Count
    <#
    $row = ""
    #$arr = @()
    for ($i = 0; $i -lt $Count; $i++)
    {
        $row += $KBsInstalledComboBox.Items[$i] + "`t"
        if(($i+1)%4 -eq 0)
        {
            Write-Host $row
            $Print += $row
            $row = ""
        }
    }
    #>
    #$Print += $arr
    
    $Print += "Computer Groups `n"
    foreach ($ComputerGroups in $ComputerGroupsComboBox.Items)
    {
        $Print += "  " + $ComputerGroups  + "`n"
    }

    $Print += "USB Devices `n"
    foreach ($USB in $USBDevicesComboBox.Items)
    {
        $Print += "  " + $USB  + "`n"
    }

    $Print += "Software Installed `n"
    foreach ($Software in $SoftwareInstalledComboBox.Items)
    {
        $Print += "  " + $Software  + "`n"
    }

    $Print += "Recovery: " + $RecoveryKeyTextBox.Text + "`n"

    #Set-Content $Print -Path C:\Users\1293527519.adm\Desktop\Texttest.txt


    $Print | Out-Printer -Name "Microsoft XPS Document Writer"
}

function RDP
{
    Start-Process "$env:windir\system32\mstsc.exe" -ArgumentList "/V:$remoteComp"
}

function MSRA
{
    Start-Process "$env:systemroot/system32/msra.exe" -ArgumentList "/OfferRA $remoteComp"
}

function ADUSERProperties
{
    param ($UI)

    Get-ADUser $UI -Properties *
}

function LastComputerLoggedOn
{
    param ($UI)

    if(Test-Path \\126arw-fs-03\Support\Users\$UI\)
    {
       Get-ChildItem \\126arw-fs-03\Support\Users\$UI\
    }
    else
    {
        $timeToComplete = Measure-Command{
        $fileArray = @()
        $files = gci \\126arw-fs-03\Support\ -recurse -include *.txt* 

        foreach($file in $files)
        {
	        $filename = $file.Fullname	
	        try 
            {
		        $reader =  [System.IO.file]::OpenText($filename)
		
		        for()
                {
			        $line = $reader.ReadLine()
			        if($line -match "$UI")
                    {
                        #write-host "FOUND!:"$filename
                        $fileArray += $file
                    }

			        if($line -eq $null){break}
		        }
	        }
	        finally
            {
		        $reader.close()
	        }   

        }

        $fileArray = $fileArray | Sort-Object -Property CreationTime

        $UserInfo2 = Get-Content $fileArray[-1]

        $LastComputerUsedTextBox.Text = $UserInfo2[11]
        $UserLastLogonTextBox.Text = $UserInfo2[1]
        }
    }
}

function Get-Drives
{
    param ($UI)

    $pDrives = Get-ChildItem \\126arw-fs-05\ProfileBackup\
    $lDrives = Get-ChildItem \\126arw-fs-03\users$\

    foreach($pDrive in $pDrives)
    {
        if ($UI -eq $pDrive.Name)
        {                
            $pDriveMatch = $true
        }
    }

    if ($pDriveMatch -eq $true)
    {
        $ProfileBackUp = "User has a P Drive"
    }
    else
    {

        $ProfileBackUp = "User has no P Drive"
        Send-MailMessage -SmtpServer peterson-smtp.us.af.mil  -To usaf.il.126-arw.mbx.scoo@mail.mil  -From usaf.il.126-arw.mbx.scoo@mail.mil  -Subject "User has no Profile Backup Drive" -Body "$pDriveUser[1] does not have a Profile backup drive. Please create on."
    }

    foreach($lDrive in $lDrives)
    {
        if ($UI -eq $lDrive.Name)
        {
            $pDriveMatch = $true
        }
    }
    if ($pDriveMatch -eq $true)
    {
        $LDrive = "User has an L Drive"
    }
    else
    {
        $LDrive = "User has no L Drive"
        Send-MailMessage -SmtpServer peterson-smtp.us.af.mil  -To usaf.il.126-arw.mbx.scoo@mail.mil  -From usaf.il.126-arw.mbx.scoo@mail.mil  -Subject "User has no L Drive" -Body "$pDriveUser[1] does not have an L drive. Please create one."
    }

    Return $ProfileBackUp, $lDrive
}

function Get-UserGroups
{
    param ($UI)

    $domain = Get-ADDomain
    $groups = Get-ADPrincipalGroupMembership -Identity $UI -ResourceContextServer $domain.DNSRoot | Sort-Object 

    Return $groups
}

function UserInfo
{
    ClearUserFields
    ClearCompFields

    $TimeToComplete = Measure-Command{
    $UI = $UserComboBox.Text.Split(",")[1]

    $EDIPITextBox.Text = $UserComboBox.Text.Split(",")[1]

    $ADUI = ADUSERProperties $UI
    $EmailAddressTextBox.Text = $ADUI.targetAddress.Split(":")[1]
    $PhoneNumberTextBox.Text = $ADUI.telephoneNumber
    $IATrainingTextBox.Text = $ADUI.iaTrainingDate

    $LastComputerUsed = LastComputerLoggedOn $UI
    $LastComputerUsedTextBox.Text = $LastComputerUsed.Name.Split(".")[0]
    $UserLastLogonTextBox.Text = $LastComputerUsed.CreationTime
    $ComputerComboBox.Text = $LastComputerUsedTextBox.Text

    $DriveInfo = Get-Drives $UI
    $ProfileBackUpTextBox.Text = $DriveInfo[0]
    $LDriveTextBox.Text = $DriveInfo[1]

    $Groups = Get-UserGroups $UI
    foreach ($group in $groups)
    {
        $groupSAM = $group.SamAccountName
        $UserGroupsComboBox.items.add($groupSAM) | Out-Null
    }
   

    if ($ComputerSearchCheckBox.IsChecked -eq $true)
    {
        CompInfo
    }
    else
    {
        $global:RemoteComp = $LastComputerUsed.Name.Split(".")[0]
    }

    $LoadingTextBox.Text = "Ready to Search"
    }

    $TimeToCompleteTextBlock.Text = $TimeToComplete 
}

function CompInfo
{
    ClearCompFields

    $timeToComplete = Measure-Command{

    $comp = $ComputerComboBox.Text
    $global:productComp = $comp
    $global:RemoteComp = $comp
    $addr = "Address='$comp'"
    $ping = Get-WmiObject -Class Win32_PingStatus -Filter $addr
    $pingResult = $ping | fl -Property Address,IPV4Address | Out-String

    $Groups = Get-ADComputer $comp -Properties memberof

    $GroupsArray = $Groups.MemberOf

    $AVvalue = $false
    $BitLockervalue = $false
    $Roguevalue = $false

    foreach ($group in $GroupsArray) 
    {
        $Group2 = $group.Split("=")[1]
        $Group2 = $Group2.Split(",")[0]

        $ComputerGroupsComboBox.items.add($Group2)
        
        if ($group -eq "CN=GLS_299 NOSS_Quarantine AV Computers,OU=INOSC Groups,OU=Administrative Groups,OU=Administration,DC=AREA52,DC=AFNOAPPS,DC=USAF,DC=MIL") 
        {
            Write-Host "Match 1"
            $AVvalue = $true
        }

        if ($group -eq "CN=GLS_299 NOSS_BITLOCKER QUARANTINE,OU=INOSC Groups,OU=Administrative Groups,OU=Administration,DC=AREA52,DC=AFNOAPPS,DC=USAF,DC=MIL") 
        {
            Write-Host "Match 2"
            $BitLockervalue = $true
        }

        if ($group -eq "CN=GLS_299 NOSS_Rogue Systems Quarantine,OU=INOSC Groups,OU=Administrative Groups,OU=Administration,DC=AREA52,DC=AFNOAPPS,DC=USAF,DC=MIL") 
        {
            Write-Host "Match 3"
            $Roguevalue = $true
        }
    }

    if(($AVvalue -eq $true) -or ($BitLockervalue -eq $true) -or ($Roguevalue -eq $true))
    {
        [string]$QuarantineStatus = "Quarantined: "

        if ($AVvalue -eq $true)
        {
            $QuarantineStatus = $QuarantineStatus + "AV "
        }

        if ($BitLockervalue -eq $true)
        {
            $QuarantineStatus = $QuarantineStatus + "Bit Locker "
        }

        if ($Roguevalue -eq $true)
        {
            $QuarantineStatus = $QuarantineStatus + "Rogue System"
        }
    }
    
    $QuarantineTextBox.Text = $QuarantineStatus

    if($ping.statuscode -eq 0)
    {
        
        $UserSid = [System.DirectoryServices.AccountManagement.UserPrincipal]::Current.Sid.Value
        [string]$WQLFilter="NOT SID = 'S-1-5-18' AND NOT SID = 'S-1-5-19' AND NOT SID = 'S-1-5-20' AND NOT SID = '$UserSid'"
        $Users =  Get-WmiObject -class Win32_Userprofile -ComputerName $comp -Filter $WQLFilter
        $LastUser = $Users | Sort-Object -Property LastUseTime -Descending | Select-Object -First 1
        $Script:UserSID = New-Object System.Security.Principal.SecurityIdentifier($LastUser.SID)
        $LastLoggedOn = $Script:UserSid.translate([System.Security.Principal.NTAccount])
        $LastADuser = Get-Aduser $LastLoggedOn.value.split("\")[1]
        $LastADuser = $LastADuser.Name
        $LastUserLogonTextBox.text = $LastADuser
        $Script:Time = ([WMI]'').ConvertToDateTime($LastUser.LastUseTime)
        $LastLogonDateTextBox.text = $Script:Time

        $diskSize = Get-WmiObject -Class Win32_Logicaldisk -ComputerName $comp -Filter "DeviceID='C:'" | Select-Object Size
        $diskFreeSpace = Get-WmiObject -Class Win32_Logicaldisk -ComputerName $comp -Filter "DeviceID='C:'" | Select-Object FreeSpace
        $diskPercentFree = $diskFreeSpace.FreeSpace/$diskSize.Size
        $CDriveFreeSpaceTextBox.Text = $diskPercentFree*100

        $osInfo = Get-WmiObject -Class Win32_OperatingSystem -ComputerName $comp
        $sdcInfo = Invoke-Command -ComputerName $comp -ScriptBlock {Get-ItemProperty "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\OEMInformation"}
        $OperatingSystemTextBox.Text = $osInfo.Caption
        $SDCVersionTextBox.Text = $sdcInfo.Model

        $computerInfo = Get-WmiObject -class Win32_ComputerSystem -ComputerName $comp
        $ComputerMakeTextBox.Text = $computerInfo.Manufacturer
        $ComputerModelTextBox.Text = $computerInfo.Model

        $processorInfo = Get-WmiObject -Class Win32_Processor -ComputerName $comp
        $ProcessorTextBox.text = $processorInfo.Name
        $TotalMemoryTextBox.Text = $computerInfo.TotalPhysicalMemory/1mb
        
        $biosInfo = Get-WmiObject -Class Win32_Bios -ComputerName $comp
        $SerialNumberTextBox.Text = $biosInfo.SerialNumber

        $IPAddressTextBox.Text = $ping.IPV4Address.IPAddressToString

        $NetAdapters = Get-WMIObject -ComputerName $comp win32_NetworkAdapterConfiguration

        foreach ($NetAdapter in $NetAdapters) {if ($ping.IPV4Address.IPAddressToString -eq $NetAdapter.IPAddress){$MACAddressTextBox.Text = $NetAdapter.MACAddress}}

        ProductInfo

        KBInfo

        $usbDeviceInfos = Get-WMIOBJECT -Class Win32_USBControllerDevice -ComputerName $comp | %{[wmi]($_.Dependent)} | Sort Description | %{$_.Description} | Sort-Object

        foreach ($usbDeviceInfo in $usbDeviceInfos)
        {
            $USBDevicesComboBox.items.add($usbDeviceInfo)
        }
    }
    else
    {

        $ADObject = Get-ADComputer $comp -Properties *
        $ADobjectDate = $ADObject.LastLogonDate
        $LastLogonDateTextBox.text = $ADObject.LastLogonDate
        $date = Get-Date

        if ($ou -eq "OU=Scott ANG Computers,OU=Scott ANG,OU=AFCONUSCENTRAL,OU=Bases,DC=AREA52,DC=AFNOAPPS,DC=USAF,DC=MIL")
        {
            if($ADobjectDate -lt $date.AddDays(-90))
            {
                $LoadingTextBox.Text = "Sending Email"
                Send-MailMessage -SmtpServer peterson-smtp.us.af.mil  -To usaf.il.126-arw.mbx.scoo@mail.mil,usaf.il.126-arw.mbx.cf-comm-focal-point@mail.mil  -From usaf.il.126-arw.mbx.scoo@mail.mil  -Subject "Computer needs deleted from domain" -Body "$comp has not been logged in for over 90 days. Last logon date is $ADobjectDate. Please remove computer from domain using DRA."
                #Start-Sleep -Milliseconds 250
                $LoadingTextBox.Text = "Unable to Connect to Computer"
            }
        }
    }

    $bitLockerComputer = Get-ADComputer -Filter {Name -eq $comp}
    $BitLockerObjects = Get-ADObject -Filter {objectclass -eq 'msFVE-RecoveryInformation'} -SearchBase $bitLockerComputer.DistinguishedName -Properties 'msFVE-RecoveryPassword' | Select-Object -First 1
    $RecoveryKeyTextBox.Text = $BitLockerObjects.'msFVE-RecoveryPassword'
    
    RecordSearch
}

$TimeToCompleteTextBlock.Text = $timeToComplete

}


foreach ($Computer in $Computers) 
{
    $ComputerComboBox.Items.Add($Computer.Name.ToUpper()) | Out-Null
}

foreach ($Printer in $Printers) 
{
    $PrinterBox = $Printer.Name+","+$Printer.__SERVER
    $PrinterComboBox.Items.Add($PrinterBox) | Out-Null
}

$ImportTargets.Add_Click({ImportTargets})
$ImportNoStrike.Add_Click({ImportNoStrike})
$CheckTargets.Add_Click({CheckTargets})


$ComputerInfoButton.Add_Click({CompInfo})

$UserInfoButton.Add_Click({UserInfo})

$RDPButton.Add_Click({RDP})
$RDPButton.Add_MouseEnter({$LoadingTextBox.Text = "Start a Remote Desktop Session"})
$RDPButton.Add_MouseLeave({$LoadingTextBox.Text = "Ready to Search"})

$MSRAButton.Add_Click({MSRA})
$MSRAButton.Add_MouseEnter({$LoadingTextBox.Text = "Start a Remote Assistance Session"})
$MSRAButton.Add_MouseLeave({$LoadingTextBox.Text = "Ready to Search"})

$CloseButton.Add_Click({$Form.Close()})
$CloseButton.Add_MouseEnter({$LoadingTextBox.Text = "Close Quick Resource Tool"})
$CloseButton.Add_MouseLeave({$LoadingTextBox.Text = "Ready to Search"})

$ClearButton.Add_Click({ClearCompFields; ClearUserFields; ClearPrinterFields})
$ClearButton.Add_MouseEnter({$LoadingTextBox.Text = "Clear Contents of Fields"})
$ClearButton.Add_MouseLeave({$LoadingTextBox.Text = "Ready to Search"})

$CancelSelectedJobButton.Add_Click({CancelPrintJob})
$CancelSelectedJobButton.Add_MouseEnter({$LoadingTextBox.Text = "Cancel Selected Job"})
$CancelSelectedJobButton.Add_MouseLeave({$LoadingTextBox.Text = "Ready to Search"})

$PrintButton.Add_Click({Print})
$PrintButton.Add_MouseEnter({$LoadingTextBox.Text = "Save Form"})
$PrintButton.Add_MouseLeave({$LoadingTextBox.Text = "Ready to Search"})

$PrinterInfoButton.Add_Click({PrinterInfo})

$CancelJobsButton.Add_Click({CancelJobs})

$about = "Quick Resource Tool Ver. 2.2 `nJason A Patton, SSgt., USAF `njason.a.patton.mil@mail.mil `nSystems Administrator `nIllinois Air National Guard (ILANG) `n126th ARW, Network Operations (SCOO) `nComm: 618-222-5841        DSN: 760-5841"

$AboutButton.Add_Click({[System.Windows.Forms.MessageBox]::Show($about, 'About')})

$Form.Add_MouseLeftButtonDown({
    $Form.DragMove()
})

$Form.ShowDialog() | out-null