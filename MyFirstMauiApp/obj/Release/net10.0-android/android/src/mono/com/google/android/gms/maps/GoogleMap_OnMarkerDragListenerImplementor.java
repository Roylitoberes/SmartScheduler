package mono.com.google.android.gms.maps;


public class GoogleMap_OnMarkerDragListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnMarkerDragListener
{

	public GoogleMap_OnMarkerDragListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnMarkerDragListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnMarkerDragListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onMarkerDrag (com.google.android.gms.maps.model.Marker p0)
	{
		n_onMarkerDrag (p0);
	}

	private native void n_onMarkerDrag (com.google.android.gms.maps.model.Marker p0);

	public void onMarkerDragEnd (com.google.android.gms.maps.model.Marker p0)
	{
		n_onMarkerDragEnd (p0);
	}

	private native void n_onMarkerDragEnd (com.google.android.gms.maps.model.Marker p0);

	public void onMarkerDragStart (com.google.android.gms.maps.model.Marker p0)
	{
		n_onMarkerDragStart (p0);
	}

	private native void n_onMarkerDragStart (com.google.android.gms.maps.model.Marker p0);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
