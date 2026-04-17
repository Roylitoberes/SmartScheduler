package mono.com.google.android.gms.maps;


public class GoogleMap_OnInfoWindowLongClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnInfoWindowLongClickListener
{

	public GoogleMap_OnInfoWindowLongClickListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnInfoWindowLongClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnInfoWindowLongClickListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onInfoWindowLongClick (com.google.android.gms.maps.model.Marker p0)
	{
		n_onInfoWindowLongClick (p0);
	}

	private native void n_onInfoWindowLongClick (com.google.android.gms.maps.model.Marker p0);

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
