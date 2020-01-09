`phx-click` events seem to bubble down in unexpected ways. In the following example clicking on the input triggers the event on the div.

```
<div style="height: 100%; width: 100%; background-color: <%= @color %>;" phx-click="color">
  <input type="text" />
</div>
```

In order to prevent this an empty `phx-click` attribute needs to be added to the input

```
<div style="height: 100%; width: 100%; background-color: <%= @color %>;" phx-click="color">
  <input type="text" phx-click />
</div>
```
