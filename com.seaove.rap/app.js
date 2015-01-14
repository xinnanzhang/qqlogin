//指定ux起调目录
Ext.Loader.setPath({
    'ux': 'app/ux'
});


Ext.application({
    name: 'app',
    requires: [
        'Ext.MessageBox'
    ],
    controllers: ['Main', 'Used', 'User'],
    launch: function() {
        // Destroy the #appLoadingIndicator element
        Ext.fly('appLoadingIndicator').destroy();

        // Initialize the main view
        Ext.Viewport.add(Ext.create('app.view.Main'));
    }
});
