<?xml version="1.0" encoding="UTF-8" ?>
<Package name="demo" format_version="4">
    <Manifest src="manifest.xml" />
    <BehaviorDescriptions>
        <BehaviorDescription name="behavior" src="behavior_1" xar="behavior.xar" />
    </BehaviorDescriptions>
    <Dialogs>
        <Dialog name="ExampleDialog" src="behavior_1/ExampleDialog/ExampleDialog.dlg" />
    </Dialogs>
    <Resources>
        <File name="choice_sentences" src="behavior_1/Aldebaran/choice_sentences.xml" />
        <File name="camera1" src="behavior_1/camera1.ogg" />
        <File name="swiftswords_ext" src="behavior_1/swiftswords_ext.mp3" />
        <File name="taichimove" src="behavior_1/taichimove.pmt" />
        <File name="Taylor Swift - Blank Space" src="html/test.mp4" />
        <File name="demo" src="demo" />
        <File name="move" src="behavior_1/move.pmt" />
    </Resources>
    <Topics>
        <Topic name="ExampleDialog_enu" src="behavior_1/ExampleDialog/ExampleDialog_enu.top" topicName="ExampleDialog" language="en_US" />
    </Topics>
    <IgnoredPaths>
        <Path src=".metadata" />
    </IgnoredPaths>
</Package>
