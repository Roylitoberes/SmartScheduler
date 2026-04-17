package mono.com.google.android.gms.maps;


public class GoogleMap_OnPoiClickListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		com.google.android.gms.maps.GoogleMap.OnPoiClickListener
{

	public GoogleMap_OnPoiClickListenerImplementor ()
	{
		super ();
		if (getClass () == GoogleMap_OnPoiClickListenerImplementor.class) {
			mono.android.TypeManager.Activate ("Android.Gms.Maps.GoogleMap+IOnPoiClickListenerImplementor, Xamarin.GooglePlayServices.Maps", "", this, new java.lang.Object[] {  });
		}
	}

	public void onPoiClick (com.google.android.gms.maps.model.PointOfInterest p0)
	{
		n_onPoiClick (p0);
	}

	private native void n_onPoiClick (com.google.android.gms.maps.model.PointOfInterest p0);

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
